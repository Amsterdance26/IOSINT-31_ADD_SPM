//
//  FeedViewController.swift
//  Navigation
//
//  Created by Василий Васильевич on 14.02.2023.
//

import UIKit
import StorageService

class FeedViewController: UIViewController {

    private lazy var button1: UIButton = {
        let button1 = UIButton()
        button1.backgroundColor = .red
        button1.layer.cornerRadius = 5
        button1.setTitle("Пост № 1", for: .normal)
        button1.setTitleColor(.black, for: .normal)
        button1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button1.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button1
    }()
    private lazy var button2: UIButton = {
        let button2 = UIButton()
        button2.backgroundColor = .green
        button2.layer.cornerRadius = 5
        button2.setTitle("Пост № 2", for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button2.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button2
    }()

    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.clipsToBounds = true
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = 50
        return stackView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(stackView)
        setupContraints()
        stackView.addArrangedSubview(self.button1)
        stackView.addArrangedSubview(self.button2)
    }
    
    @objc public func buttonAction() {
        let postViewController = PostLogInViewController()
        self.navigationController?.pushViewController(postViewController, animated: true)
        postViewController.titlePost = publicPost.title
    }
    
    private func setupContraints() {
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo:  self.view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo:  self.view.trailingAnchor, constant: -20),
            stackView.heightAnchor.constraint(equalToConstant: 50),
            stackView.bottomAnchor.constraint(equalTo:  self.view.bottomAnchor, constant: -16),
            stackView.topAnchor.constraint(equalTo:  self.view.topAnchor, constant: 16)
        ])
    }
}
