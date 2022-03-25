//
//  ViewController.swift
//  TopCenteredUILabel
//
//  Created by Seunghun Yang on 2022/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .top
        stackView.backgroundColor = .cyan
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .red
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.text = "테스트"
        return label
    }()
    
    private(set) lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("toggle", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 280),
            stackView.heightAnchor.constraint(equalToConstant: 48)
        ])
        
        stackView.addArrangedSubview(label)
        
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 16),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    @objc private func handleTap() {
        label.text = label.text == "테스트"
        ? "WWWWWWWWWWWWWWWWWWWWWWWWWWWW"
        : "테스트"
        
        label.sizeToFit()
    }
}

