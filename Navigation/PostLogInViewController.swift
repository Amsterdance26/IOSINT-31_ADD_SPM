//
//  PostWithStruct.swift
//  Navigation
//
//  Created by Василий Васильевич on 04.04.2023.
//

import UIKit
import StorageService

class PostLogInViewController: UIViewController {

    var titlePost: String = "Posts"
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(buttonPressed))
        navigationItem.rightBarButtonItem = button
        setupView()
    }
    @objc func buttonPressed(_sender: UIButton) {
        let infoViewController = InfoViewController()
        infoViewController.modalPresentationStyle = .pageSheet
        present(infoViewController, animated: true)
    }
    func setupView() {
        self.view.backgroundColor = .red
        self.navigationItem.title = titlePost
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
