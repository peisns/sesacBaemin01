//
//  KobisView.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/23.
//

import UIKit

import RealmSwift
import Alamofire
import SwiftyJSON

class MovieInfo: Object {
    @Persisted var list: List<String>
    @Persisted var date: String

    @Persisted(primaryKey: true) var objectId: ObjectId
    
    let dataList: List<String> = List<String>()
        var dataArray: [String] {
            get {
                return dataList.map{$0}
            }
            set {
                dataList.removeAll()
                dataList.append(objectsIn: newValue)
            }
        }
    convenience init(dataArray: [String], date: String) {
        self.init()
        self.dataArray = dataArray
        self.date = date
    }
}


class KobisView: UIView {

    var items: Results<MovieInfo>!
    let localRealm = try! Realm()

    var datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.backgroundColor = .systemGray6
        picker.datePickerMode = .date
        picker.maximumDate = Date()
        return picker
    }()
    
    var tableView: UITableView = {
        let view = UITableView()
        view.backgroundColor = .brown
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configure() {
        self.backgroundColor = .white
        [datePicker, tableView].forEach {self.addSubview($0)}

        tableView.delegate = self
        tableView.dataSource = self
        
        datePicker.addTarget(self, action: #selector(datePickerSelected) , for: .valueChanged)
        
        items = localRealm.objects(MovieInfo.self).sorted(byKeyPath: "date", ascending: false)
    }
    
    func setConstraints() {
        datePicker.snp.makeConstraints { make in
            make.top.trailing.leading.equalTo(self.safeAreaLayoutGuide)
        }
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(datePicker.snp.bottom)
            make.bottom.equalTo(self)
            make.leading.trailing.equalTo(self)
        }
    }
    
    @objc func datePickerSelected(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        let selectedDate = sender.date
        let dateString = dateFormatter.string(from: selectedDate)
        print(dateString)
        
        AF.request("http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=0c9f266cf5a4553cc4c21633b46475f0&targetDt=\(dateString)", method: .get).validate().responseData { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print(json)
                let jsonList = json["boxOfficeResult"]["dailyBoxOfficeList"].arrayValue
                let movieName = jsonList.map { $0["movieNm"].stringValue }
                try! self.localRealm.write({
                    self.localRealm.add(MovieInfo(dataArray: movieName, date: dateString))
                })
                
                
            case .failure(let error):
                print(error)
            }
        }
        
    }
}

extension KobisView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = .blue
        
        return cell
    }
}
