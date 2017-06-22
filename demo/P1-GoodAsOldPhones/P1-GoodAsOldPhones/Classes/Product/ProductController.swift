//
//  ProductController.swift
//  P1-GoodAsOldPhones
//
//  Created by pxl on 2017/6/21.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ProductController: UIViewController{
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    fileprivate let identifer = "productCell"
    
    
    fileprivate var products : [Product]? {
        
        let myproduct: [Product]? = [
            Product(name: "1907 Wall Set", cellImageName: "image-cell1", fullscreenImageName: "phone-fullscreen1"),
            Product(name: "1921 Dial Phone", cellImageName: "image-cell2", fullscreenImageName: "phone-fullscreen2"),
            Product(name: "1937 Desk Set", cellImageName: "image-cell3", fullscreenImageName: "phone-fullscreen3"),
            Product(name: "1984 Moto Portable", cellImageName: "image-cell4", fullscreenImageName: "phone-fullscreen4")
        ]
        
        return myproduct
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProduct" {
            if let cell = sender as? UITableViewCell {
                if let cell = sender as? UITableViewCell,
                    let indexPath = myTableView.indexPath(for: cell),
                    let productVC = segue.destination as? ProductController {
//                    productVC.product = products?[(indexPath as NSIndexPath).row]
                }
            }
        }
        
        
    }
    
}


extension ProductController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products?.count ?? 0
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifer, for: indexPath)
        guard let products = products else { return cell }
        
        cell.textLabel?.text = products[(indexPath as NSIndexPath).row].name
        
        if let imageName = products[(indexPath as NSIndexPath).row].cellImageName {
            cell.imageView?.image = UIImage(named: imageName)
        }
        
        return cell;
    }
    
    
    
    
    
    
    
}
