//
//  BookCell.swift
//  Kindle
//
//  Created by Corbin on 1/28/17.
//  Copyright © 2017 Corbin. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    let bookImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "steve_jobs")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let bookTitleLabel : UILabel = {
        let label = UILabel()
        label.text = "Title Label"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let authorLabel : UILabel = {
        let label = UILabel()
        label.text = "Author for the book"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // code
//        backgroundColor = .red
        textLabel?.textColor = .white
        
        addSubview(bookImageView)
        bookImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        bookImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        bookImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        bookImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        addSubview(bookTitleLabel)
        bookTitleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -10).isActive = true
        bookTitleLabel.leftAnchor.constraint(equalTo: bookImageView.rightAnchor, constant: 8).isActive = true
        bookTitleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        bookTitleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        addSubview(authorLabel)
        authorLabel.topAnchor.constraint(equalTo: bookTitleLabel.bottomAnchor, constant: 4).isActive = true
        authorLabel.leftAnchor.constraint(equalTo: bookImageView.rightAnchor, constant: 8).isActive = true
        authorLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        authorLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
