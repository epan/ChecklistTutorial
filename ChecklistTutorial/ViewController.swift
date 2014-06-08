//
//  ViewController.swift
//  ChecklistTutorial
//
//  Created by Eric Pan on 6/7/14.
//  Copyright (c) 2014 Eric Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView!
    var textField: UITextField!
    var tableViewData = String[]()
    
    // Define colors
    let lightOrange: UIColor = UIColor(red: 0.996, green: 0.467, blue: 0.224, alpha: 1)
    let medOrange: UIColor = UIColor(red: 0.973, green: 0.388, blue: 0.173, alpha: 1)
    let darkOrange: UIColor = UIColor(red: 0.796, green: 0.263, blue: 0.106, alpha: 1)

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Set up table view
        self.tableView = UITableView(frame: CGRectMake(0, 100, self.view.bounds.size.width, self.view.bounds.size.height - 100), style: UITableViewStyle.Plain)
        self.tableView.registerClass(MyTableViewCell.self, forCellReuseIdentifier: "myCell")
        
        // for array content
        self.tableView.backgroundColor = darkOrange
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.view.addSubview(self.tableView)
        
        // Set up text field
        self.textField = UITextField(frame: CGRectMake(0, 0, self.view.bounds.size.width, 100))
        self.textField.backgroundColor = lightOrange
        self.textField.delegate = self
        
        self.view.addSubview(self.textField)
        
        
    }
    
    // Table View Data Source Delegate
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {

        return tableViewData.count
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        
        
        var myNewCell: MyTableViewCell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as MyTableViewCell
        
        myNewCell.text = self.tableViewData[indexPath.row]
        myNewCell.backgroundColor = medOrange
        myNewCell.textColor = UIColor.whiteColor()
        
        return myNewCell
    }

    // Text Field Delegate
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        
        // Appends text to array, clears input, reloads table, removes keyboard
        tableViewData.append(textField.text)
        textField.text = ""
        self.tableView.reloadData()
        textField.resignFirstResponder()
        return true
    }
    

}
