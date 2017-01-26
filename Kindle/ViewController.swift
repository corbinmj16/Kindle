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
    // create optional property
    // books is an array of type Book
    var books : [Book]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        // code below here
        setupBooks()
        
    }
    
    func setupBooks() {
        let page = Page(pageNum: 1, text: "Text for the first page of the Steve Jobs book")
        let page2 = Page(pageNum: 2, text: "Second page on Steve Jobs books")
        
        let stevePages = [page, page2]
        
        let steveBook = Book(title: "Steve Jobs", author: "Walter Issacson", pages: stevePages)
        let billBook = Book(title: "Bill Gates", author: "Michael P.", pages: [
            Page(pageNum: 1, text: "Text for page 3 of Bill"),
            Page(pageNum: 2, text: "Second Page of Bill"),
            Page(pageNum: 3, text: "Third Page of book of bill"),
            Page(pageNum: 4, text: "Fourth page player")
            ])
        
        self.books = [steveBook, billBook]
        
        if let books = self.books {
            for book in books {
                print("Title: \(book.title)")
                for page in book.pages {
                    print("Page \(page.pageNum): \(page.text)")
                }
            }
        }
        
        // not the safest way to unwrap optional
        //        for book in self.books! {
        //            print("Title: \(book.title)")
        //            for page in book.pages {
        //                print("Page \(page.pageNum): \(page.text)")
        //            }
        //        }
    }
}





