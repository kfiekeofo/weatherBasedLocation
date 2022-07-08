//
//  ViewController.swift
//  weatherBasedLocation
//
//  Created by kimyoungduck on 2022/07/06.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var tableViewItems = ["item1", "item2", "item3"]
    var weatherImgName = ["basis","sunny","rainy","cloud","snow"]
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle(
            "Button",
            for: .normal
        )
        button.setTitleColor(
            .label,
            for: .normal
        )
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.red.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var temptable: UITableView = {
        let temptable = UITableView()
        temptable.layer.borderWidth = 1
        temptable.layer.borderColor = UIColor.red.cgColor
        temptable.translatesAutoresizingMaskIntoConstraints = false
        temptable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return temptable
    }()
    
    private var weatherImg: UIImageView = {
        let weatherImg = UIImageView()
        weatherImg.layer.borderColor = UIColor.red.cgColor
//        weatherImg.frame.size = CGSize(width: temptable.frame.width, height: temptable.frame.height)
        weatherImg.frame.size = CGSize(width: 20, height: 20)
        weatherImg.layer.borderColor = UIColor.red.cgColor
        weatherImg.image = UIImage(named:"rpensionBanner.png")
        return weatherImg
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(button)
        view.addSubview(temptable)
        view.addSubview(weatherImg)
        
        self.temptable.dataSource = self
        self.temptable.delegate = self
        
        button.snp.makeConstraints {
            $0.top.equalToSuperview().offset(60)
            $0.left.equalToSuperview().offset(20)

        }
        temptable.snp.makeConstraints{
            $0.top.equalTo(button.snp.bottom).offset(30)
            $0.left.equalToSuperview().offset(20)
            $0.bottom.equalToSuperview().offset(-50)
            $0.right.equalToSuperview().offset(-200)
        }
        weatherImg.snp.makeConstraints{
            $0.top.equalToSuperview().offset(60)
            $0.left.equalTo(temptable.snp.right).offset(20)
            $0.bottom.equalToSuperview().offset(-200)
            $0.right.equalToSuperview().offset(-20)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tableViewItems[indexPath.row]
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return
    }
}
