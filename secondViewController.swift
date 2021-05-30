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
    
    let titles = [("Cheese Rabokki"),("Mug Brownie"), ("\"Fried\" Rice"), ("Chicken Fajitas"), ("Vegetarian Burrito Bowl"),("Coconut Acorn Squash"), ("Summer Sub Sandwich"),("Microwave Egg Sandwich"),("Mac 'n Cheese"),("Mug Omelette"),("Chicken Quesadilla"),("Baked Potato"),("Spaghetti Squash and Meatballs"),("BBQ Chicken Nachos"),("Mug Bacon and Cheese"),("Mug Blueberry French Toast"),("Mug Banana Chocolate"),("Mug Veggie and Cheese"),("Breakfast Sandwich"),("Pita Pizza"),("Healthier Instant Noodles"),("Veggie Rice Bowl"),("Blueberry Oatmeal"),("Pasta")
    ]
    
    let images = [UIImage(named:"cheeseRabokki"),
                  UIImage(named:"mugBrownie"),
                  UIImage(named: "friedRice"),
                  UIImage(named:"chickenFajitas"),
                  UIImage(named: "vegetarianBurritoBowl"),
                  UIImage(named: "coconutAcornSquash"),
                  UIImage(named: "summerSubSandwich"),
                  UIImage(named: "microwaveEggSandwich"),
                  UIImage(named: "Mac'nCheese"),
                  UIImage(named: "mugOmelette"),
                  UIImage(named: "chickenQuesadilla"),
                  UIImage(named: "bakedPotato"),
                  UIImage(named: "spaghettiSquash&Meatballs"),
                  UIImage(named: "bbqChickenNachos"),
                  UIImage(named: "mugBacon&Cheese"),
                  UIImage(named: "mugBlueberryFrenchToast"),
                  UIImage(named: "mugBananaChocolate"),
                  UIImage(named: "mugVeggie&Cheese"),
                  UIImage(named: "breakfastSandwich"),
                  UIImage(named: "pitaPizza"),
                  UIImage(named: "healthierInstantNoodles"),
                  UIImage(named: "veggieRiceBowl"),
                  UIImage(named: "blueberryOatmeal"),
                  UIImage(named: "pasta")
    ]
    
    let links = ["https://www.10000recipe.com/global/view.html?seq=6900685",
                 "https://www.kitchenathoskins.com/2019/02/13/single-serve-4-ingredient-fudgy-nutella-brownie-mug-cake/",
                 "https://tasty.co/recipe/microwave-fried-rice",
                 "https://momspotted.com/2009/08/chicken-fajitas-recipe-in-less-than-15-minutes.html",
                 "https://www.healthy-liv.com/5-minute-vegetarian-burrito-bowl/",
                 "https://www.tasteofhome.com/recipes/coconut-acorn-squash/",
                 "https://www.tasteofhome.com/recipes/summer-sub-sandwich/",
                 "https://www.tasteofhome.com/recipes/microwave-egg-sandwich/",
                 "https://tasty.co/recipe/microwave-5-minute-mac-n-cheese",
                 "https://tasty.co/recipe/microwave-3-minute-omelette-in-a-mug",
                 "https://tasty.co/recipe/microwave-4-minute-chicken-quesadilla",
                 "https://tasty.co/recipe/10-minute-baked-potato",
                 "https://tasty.co/recipe/microwave-spaghetti-squash-meatballs",
                 "https://tasty.co/recipe/microwave-4-minute-bbq-chicken-nachos",
                 "https://tasty.co/recipe/bacon-and-cheese-in-a-mug",
                 "https://tasty.co/recipe/blueberry-french-toast-in-a-mug",
                 "https://tasty.co/recipe/banana-chocolate-in-a-mug",
                 "https://tasty.co/recipe/veggie-and-cheese-breakfast-in-a-mug",
                 "https://tasty.co/recipe/microwaved-egg-breakfast-sandwich",
                 "https://tasty.co/recipe/microwaved-caprese-pita-pizza",
                 "https://tasty.co/recipe/healthier-instant-noodles",
                 "https://tasty.co/recipe/microwaved-veggie-rice-bowl",
                 "https://tasty.co/recipe/blueberry-and-almond-instant-oatmeal",
                 "https://spoonuniversity.com/recipe/microwave-pasta-in-less-than-10-minutes-how-to-make"
    ]
                    
    var recipes = [
        "Cheese Rabokki": ["ramen", "eggs", "korean rice cakes", "gochujang", "cheese", "chives", "sesame oil", "soy sauce","all"],
        "Mug Brownie" : ["all","nutella", "eggs", "flour","cocoa powder","milk"],
        "\"Fried\" Rice" : ["all","rice", "soy sauce", "sesame oil", "peas", "carrots", "eggs", "chives"],
        "Chicken Fajitas" : ["chicken","onions","peppers","spice mix","all"],
        "Vegetarian Burrito Bowl"  :   ["rice","black beans","salsa","cheese","all"],
        "Coconut Acorn Squash" : ["acorn squash","squash","mango chutney","butter","coconut","all"],
        "Summer Sub Sandwich" : ["bread","cream cheese","ham","tomatoes","lettuce","all"],
        "Microwave Egg Sandwich" : ["bacon","eggs","cheese","english muffin","all"],
        "Mac 'n Cheese" : ["macaroni","water","milk","cheese","all"],
        "Mug Omelette" : ["eggs", "bell peppers", "ham", "spinach"],
        "Chicken Quesadilla" : ["tortillas","chicken","bell peppers", "cheese"],
        "Baked Potato": ["potato","oil","bacon","cheese","chives","sour cream"],
        "Spaghetti Squash and Meatballs": ["spaghetti squash", "oil", "meatballs", "tomato sauce","cheese","chives"],
        "BBQ Chicken Nachos": ["chicken", "BBQ Sauce", "tortilla chips", "tomato", "cheese","chives","guacomole","sour cream"],
        "Mug Bacon and Cheese": ["bread","egg","milk","cheese","bacon","tomato","chives"],
        "Mug Blueberry French Toast": ["bread","egg","milk","cinammon","vanilla","blueberry","syrup"],
        "Mug Banana Chocoalte" : ["bread","egg","milk","cocoa powder","banana","chocolate chips"],
        "Mug Veggie and Cheese" : ["bread","egg","milk","cheese","spinach","bell peppers","tomato"],
        "Breakfast Sandwich": ["eggs","english muffin","tomato","spinach","avocado"],
        "Pita Pizza" : ["pita","tomato sauce","cheese","tomato","basil","balsamic reduction"],
        "Healthier Instant Noodles": ["soy sauce","sesame oil","mushroom","carrot","spinach","ramen","chives"],
        "Veggie Rice Bowl": ["rice","oil","black beans","tomato","avocado","cilantro"],
        "Blueberry Oatmeal": ["oatmeal","blueberry","almonds","chia seeds","vanilla","sugar","milk"],
        "Pasta": ["pasta","water","tomato sauce","cheese"]
    ]
    
    var insertedRecipes = [String]()
    var insertedImages = [UIImage]()
    var insertedLinks = [String]()
    
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
                    var index = titles.firstIndex(of: name)!
                    insertedRecipes.append(name)
                    insertedImages.append(images[index]!)
                    insertedLinks.append(links[index])
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
        return insertCount
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
            as! TableViewCell
        cell.image1.image = self.insertedImages[indexPath.row]
        cell.title1.text = self.insertedRecipes[indexPath.row]
        return cell
    }
    

@IBAction func didTapBackButton(_ sender: Any) {
    let vc = storyboard?.instantiateViewController(identifier: "firstScreen") as! ViewController
    vc.modalPresentationStyle = .fullScreen
    present(vc, animated: true)
}
    

    

}
