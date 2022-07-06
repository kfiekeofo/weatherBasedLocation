//
//  ViewController.swift
//  weatherBasedLocation
//
//  Created by kimyoungduck on 2022/07/06.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(button)
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16.0).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.0).isActive = true
//        button.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        button.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
//        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
//        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

