//
//  KobisView.swift
//  SeSAC2DiaryRealm
//
//  Created by Brother Model on 2022/08/23.
//

import UIKit

import Alamofire
import RealmSwift
import SnapKit
import SwiftyJSON


class KobisView: BaseView {
    
//    var items: Results<struct>!
    let localRealm = try! Realm()

    var datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.backgroundColor = .systemGray6
        picker.datePickerMode = .date
        picker.maximumDate = Date()
        return picker
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
        self.addSubview(datePicker)

        self.backgroundColor = .white
        
        datePicker.addTarget(self, action: #selector(datePickerSelected) , for: .valueChanged)
    }
    
    func setConstraints() {
        datePicker.snp.makeConstraints { make in
            make.top.trailing.leading.equalTo(self.safeAreaLayoutGuide)
        }
    }
    
    @objc func datePickerSelected(_ sender: UIDatePicker) {
        print(#function)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        let selectedDate = sender.date
        let dateString = dateFormatter.string(from: selectedDate)
        
        AF.request("http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=0c9f266cf5a4553cc4c21633b46475f0&targetDt=\(dateString)", method: .get).validate().responseData { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let jsonList = json["dailyBoxOfficeList"].arrayValue
                let movieName = jsonList.map { $0["movieNm"]}
                let moviernum = jsonList.map { $0["rnum"]}
                
                print(movieName, moviernum)
                
            case .failure(let error):
                print(error)
            }
        }
        
    }
        
}

