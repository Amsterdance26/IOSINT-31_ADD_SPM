//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Василий Васильевич on 18.04.2023.
//

import UIKit
import StorageService

class PostTableViewCell: UITableViewCell {

    static let id = "PostTableViewCell"
    let author: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.numberOfLines = 2
        return label
    }()
    let image: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .white
        image.contentMode = .scaleAspectFit
        return image
    }()
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .systemGray
        label.numberOfLines = 0
        return label
    }()
    let likesLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        return label
    }()
    let viewLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupCell() {
        [author, image, descriptionLabel, likesLabel, viewLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints  = false
            contentView.addSubview($0)
        }
        NSLayoutConstraint.activate([
            author.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            author.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            author.bottomAnchor.constraint(equalTo: image.topAnchor, constant: -12),

            image.topAnchor.constraint(equalTo: author.bottomAnchor, constant: 12),
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            image.heightAnchor.constraint(equalToConstant: 400),
            image.widthAnchor.constraint(equalToConstant: 100),
            image.bottomAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: -16),

            descriptionLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            descriptionLabel.bottomAnchor.constraint(equalTo: likesLabel.topAnchor, constant: -16),

            likesLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            likesLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            likesLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),

            viewLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            viewLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            viewLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -16)
        ])
    }
    func configure(posts: Post) {
        author.text = posts.author
        image.image = posts.image
        descriptionLabel.text = posts.description
        likesLabel.text = "Likes: \(posts.likes)"
        viewLabel.text = "Views: \(posts.view)"
    }
}
