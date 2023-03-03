//
//  InfoViewController.swift
//  NavigationApp
//
//  Created by Юлия Кагирова on 03.03.2023.
//

import UIKit

class InfoViewController: UIViewController {

    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemYellow
        button.layer.cornerRadius = 12
        button.setTitle("Изменить", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(alertVC), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        setupButton()
        alertVC()
    }

    private func setupButton() {
        self.view.addSubview(self.button)
        self.button.bottomAnchor.constraint(
            equalTo: self.view.bottomAnchor,
            constant: -100).isActive = true
        self.button.leadingAnchor.constraint(
            equalTo: self.view.leadingAnchor,
            constant: 20).isActive = true
        self.button.trailingAnchor.constraint(
            equalTo: self.view.trailingAnchor,
            constant: -20).isActive = true
        self.button.heightAnchor.constraint(
            equalToConstant: 50).isActive = true
    }

    @objc private func alertVC() {
        let alert = UIAlertController(
            title: "Удалить новый пост?",
            message: "Нажмите да, если хотите удалить новый пост",
            preferredStyle: .actionSheet)

        alert.addAction(UIAlertAction(title: "Да", style: .default, handler: {action in
            print("Yes") } ))
        alert.addAction(UIAlertAction(title: "Нет", style: .cancel, handler: {action in
            self.cancelButton()
            print("No")
        }))

        self.present(alert, animated: true)
    }

    func cancelButton() {
        dismiss(animated: true)
    }
}

