//
//  FeedViewController.swift
//  ShoppingMall_Ex1
//
//  Created by Ahreum CHO on 2020/09/19.
//  Copyright © 2020 Ahreum CHO. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var products: [Product]?
    
    struct Storyboard {
        static let feedProductCell = "FeedProductCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = " Product Feed "

        tableView.delegate = self
        tableView.dataSource = self
        
        fetchProduct()
        
    }
    
    func fetchProduct(){
        
        products = Product.fetchProducts()
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
    }
    
}

extension FeedViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let products = products{
            
            return products.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.feedProductCell, for: indexPath) as! FeedProductTableViewCell
        
        cell.ProductImage.image = products![indexPath.row].images?.first
        cell.ProductName.text = products![indexPath.row].name
        cell.ProductPrice.text = "$\(products![indexPath.row].price!)"
        
        
        return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    
    
}
