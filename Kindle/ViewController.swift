//
//  ViewController.swift
//  Kindle
//
//  Created by Corbin on 1/22/17.
//  Copyright © 2017 Corbin. All rights reserved.
//

import UIKit

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

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let page = Page(pageNum: 1, text: "Text for the first page of the Steve Jobs book")
        let page2 = Page(pageNum: 2, text: "Second page on Steve Jobs books")
        print(page.pageNum)
        print(page2.text)
        
//        let book = Book(title: "Steve Jobs", author: "Walter Issacson")
//        print("Title: \(book.title), Author: \(book.author)")
        
        let stevePages = [page, page2]
        
        let steveBook = Book(title: "Steve Jobs", author: "Walter Issacson", pages: stevePages)
        print("Title: \(steveBook.title), Author: \(steveBook.author), Pages: \(steveBook.pages[0].text)")
    }
}
