//
//  ViewController.swift
//  GithubUserSearch
//
//  Created by Margarita Villa on 5/31/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let salvadorsTableViewData = ["Las Vegas", "Houston", "Williamstown", "San Diego", "San Francisco", "Los Angeles", "Minneapolis", "Charleston", "New York City", "Newark"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        salvadorsSetupView()
        
    }
    
    private func salvadorsSetupView() {
        view.backgroundColor = UIColor.white
        
        //let's create a table view
        let tableView = UITableView()
        //it will display cells with each cell containing something from global vairable array salvadorsTableViewData
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
        
        //every table view has to register any cell that will be displayed in it
        //we will use Apple's default cell UITableViewCell and has a matching reuse identifier
        //the identifier is useful if you have more than one kind of cell
        //here its pointless but still required, and it can be any string you want
        //not just "cell"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        
        //In order for the tableView to be aware of what to display it has to
        //conform to a UITableViewDataSource Protocol
        //A protocol is an agreement saying if a class has specific properties and methods
        //then it conforms to that protocol
        //Read this
       // https://developer.apple.com/documentation/uikit/uitableviewdatasource
        
        //We will make the viewcontroller handle the tableview data source protocol methods
        tableView.dataSource = self
        //notice I created an extension at the bottom for ViewController to conform to
        //UITableView DataSource protocl
        
    }


}

extension ViewController: UITableViewDataSource {
    //first method required by the protocol
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return salvadorsTableViewData.count //I want one cell for every item in the array
    }
    
    //second method required for protocol
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //if you don't match your identifier with the one in setupView it will crash or return nil can't remember
        //Notice the language here its dequeue reusable cell
        //That's because tablview cells get reused so your device doesn't run out
        //of memeory
        //Its super efficient
        //make sure to use dequeueReusableCell(withIdentifier, forIndexpath) otherwise the other methods return an optional and you want
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //https://developer.apple.com/documentation/uikit/uitableviewcell
        //if you scroll down to Specifying Content for Standard Cell Styles
        //you find UITableviewCell out of the box has an optional text label
        //and an optional detailTextLabel
        //lets put some string in each label to display it
        cell.textLabel?.text = "\(salvadorsTableViewData[indexPath.row])"
        
        // "\()" is called string interpolation it basically gets data and converts it to a string
        return cell
        
    }
    
    
    //now that both methods are implemented we can say ViewController conforms to
    //the UITableViewDataSource delegate
    //You will always do this when working with tableviews
    
}


//Homework: Create your own global variable data set array, then create your own setupView method and create a table View you'll have to reuse my extension but I encourage you to erase the inner parts of the code of the extension methods and for you to write them, feel free to add as many things to the table as possible
//Id do this exercise a couple of times, being an iOS developer is mostly creating tables and hooking them up to some API, the UITableViewDataSource protocol is incredibly important, you should know that there are two required methods number of rows in section (it defaults to one section but can be changed by adding additional protocol methods) and cellForIndexpath
