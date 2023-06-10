//
//  Post.swift
//  StorageService
//
//  Created by Василий Васильевич on 25.05.2023.
//

import UIKit

public struct Post {
    public var title: String
    public  var author: String
    public  var image = UIImage()
    public  var description: String
    public  var likes: Int
    public  var view: Int
}

public var publicPost  = Post(title: "Мой пост", author: "Music", image: UIImage(named: "Music")!, description: Description.summerDescript, likes: 100, view: 210)

public var posts : [Post] = [
    Post(title: "Мой пост", author: "Music", image: UIImage(named: "Music")!, description: Description.summerDescript, likes: 100, view: 210),
    Post(title: "Мой пост", author: "Reading", image: UIImage(named: "Reading")!, description: Description.winterDescript, likes: 134, view: 542),
    Post(title: "Мой пост", author: "Drawing", image: UIImage(named: "Drawing")!, description: Description.springDescript, likes: 311, view: 236),
    Post(title: "Мой пост", author: "Movies", image: UIImage(named: "Movies")!, description: Description.automneDescript, likes: 111, view: 300)
]

struct Description {
    static let summerDescript = "I like music"
    static let winterDescript = "I like reading"
    static let springDescript = "I like drawing"
    static let automneDescript = "I like to watch movies"
}
