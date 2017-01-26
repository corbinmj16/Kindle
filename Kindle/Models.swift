//
//  Models.swift
//  Kindle
//
//  Created by Corbin Jensen on 1/26/17.
//  Copyright © 2017 Corbin. All rights reserved.
//

import Foundation

class Book {
    let title: String
    let author: String
    let pages: [Page]
    
    init(title: String, author: String, pages: [Page]) {
        self.title = title
        self.author = author
        self.pages = pages
    }
}

class Page {
    let pageNum: Int
    let text: String
    
    init(pageNum: Int, text: String) {
        self.pageNum = pageNum
        self.text = text
    }
}
