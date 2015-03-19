//
//  ViewController.swift
//  TableViewCellExample
//
//  Created by GrownYoda on 3/19/15.
//  Copyright (c) 2015 yuryg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    
    //2
    var produceTupleArray = [("Coconut","Fruit"),("Tomato","Vegi"),("Peach","Fruit"),("Apple","Fruit"),("Avocado","Vegi"),("Banana","Nut")]
    
    //3
    var CandyTupleArry = [("Hubba Bubba","Chewing Gum"),("Juciy Fruit","Chewing Gum"),("FireBall","Jawbreaker"),("ButterFinger","Candy Bar"),("Jolly Rancher","Hard Candy"),("Tootsie Pop","Lolly Pop")]
    
    //1
    // Mark Required TableView Cells
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        //1
//        return 5
        // 2
       // return produceTupleArray.count
        
        if section == 0{
        return produceTupleArray.count
        
        }else{
        return CandyTupleArry.count
        }
    }
    
    
    //  Gets Called for Each Row In Section, Returns a Cell.
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //1
      //  var cell = UITableViewCell()
       // cell.textLabel?.text = "Hello"  // adds text to cell
       
  
        
        //3
//      var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell


        
        // 2
        //4
        if indexPath.section == 0 {
            
                var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
            
                let (item, type) = produceTupleArray[indexPath.row]
                cell.textLabel?.text = item
                cell.detailTextLabel?.text = type
                return cell
        }else{
            
                var cell2 = tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath) as UITableViewCell
            
                cell2.textLabel?.text = CandyTupleArry[indexPath.row].0
                cell2.detailTextLabel?.text = CandyTupleArry[indexPath.row].1
                return cell2
        }
        
    }
    
    
    // 4
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
        return "Produce"
        }else{
        return "Candies"
        }
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    


}

