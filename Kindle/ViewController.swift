//
//  ViewController.swift
//  Kindle
//
//  Created by Corbin on 1/22/17.
//  Copyright © 2017 Corbin. All rights reserved.
//

import UIKit


class ViewController: UITableViewController {
    // MARK: Variables
    
    // create optional property
    // books is an array of type Book
    var books : [Book]?
    
    
    //MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // title of view
        navigationItem.title = "Books"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
        
        // code below here
        setupBooks()
        
    }
    
    //MARK: UITableView needed functions
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        let book = books?[indexPath.row]
        
        cell.textLabel?.text = book?.title
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // get the count of books and return it
        if let bookCount = books?.count {
            return bookCount
        }
        // return 0 because when the program runs it will return this value first and then go to the 'if let' above
        return 0
    }
    
    
    // MARK: Functions
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





