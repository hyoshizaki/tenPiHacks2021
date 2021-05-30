//
//  secondViewController.swift
//  10piHacks2021(5-29-2021)
//
//  Created by Shuji Yoshizaki on 5/29/21.
//

import UIKit

class secondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    //Add pictures 13:01 , how to create custom cell tableview ( with image& text)    soonin coding challenge
    
    var recipes = [
            "cheesy rabboki": ["ramen", "eggs", "korean rice cakes", "gochujang", "cheese"],
            "mug brownie" : ["nutella", "eggs", "flour"]
        ]
    var insertedRecipes = [String]()
@IBOutlet weak var ingredient: UILabel!
    public var userInput = ""
    public var insertCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        var s = String(userInput)
        ingredient.text = s
        for(name, ingredients) in recipes {
            for ing in ingredients {
                if(ing == s){
                    insertedRecipes.append(name)
                    insertCount += 1
                }
            }
        }
        
        tableview.delegate = self
        tableview.dataSource = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return
    }

@IBAction func didTapBackButton(_ sender: Any) {
    let vc = storyboard?.instantiateViewController(identifier: "firstScreen") as! ViewController
    vc.modalPresentationStyle = .fullScreen
    present(vc, animated: true)
}

}
