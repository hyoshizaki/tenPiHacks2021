//
//  TableViewCell.swift
//  10piHacks2021(5-29-2021)
//
//  Created by Shuji Yoshizaki on 5/29/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var link1: UILabel!
    @IBOutlet weak var button1: UIButton!
    
    let titles = [("Cheese Rabokki"),("Mug Brownie"), ("\"Fried\" Rice"), ("Chicken Fajitas"), ("Vegetarian Burrito Bowl"),("Coconut Acorn Squash"), ("Summer Sub Sandwich"),("Microwave Egg Sandwich"),("Mac 'n Cheese"),("Mug Omelette"),("Chicken Quesadilla"),("Baked Potato"),("Spaghetti Squash and Meatballs"),("BBQ Chicken Nachos"),("Mug Bacon and Cheese"),("Mug Blueberry French Toast"),("Mug Banana Chocolate"),("Mug Veggie and Cheese"),("Breakfast Sandwich"),("Pita Pizza"),("Healthier Instant Noodles"),("Veggie Rice Bowl"),("Blueberry Oatmeal"),("Pasta")
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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func didTapGoogle(sender: AnyObject){
        var s = ""
        for name in titles {
            if(name == title1.text){
                var index = titles.firstIndex(of: name)!
                s = links[Int(index)]
            }
        }
        UIApplication.shared.openURL(NSURL(string: s) as! URL)
        
    }
    

}
/*
 let links = [,
              "https://momspotted.com/2009/08/chicken-fajitas-recipe-in-less-than-15-minutes.html",
              "https://www.healthy-liv.com/5-minute-vegetarian-burrito-bowl/",
              "https://www.tasteofhome.com/recipes/coconut-acorn-squash/",
              "https://www.tasteofhome.com/recipes/summer-sub-sandwich/",
              "https://www.tasteofhome.com/recipes/microwave-egg-sandwich/",
              "https://tasty.co/recipe/microwave-5-minute-mac-n-cheese"
 ]
 */
 
