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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(button)
        view.addSubview(temptable)
        self.temptable.dataSource = self
        self.temptable.delegate = self
        
//        button.snp.makeConstraints {
//            $0.center.equalToSuperview()
//
//        }
        temptable.snp.makeConstraints{
            $0.edges.equalToSuperview()

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
