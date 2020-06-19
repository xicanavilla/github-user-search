//
//  ViewController.swift
//  GithubUserSearch
//
//  Created by Margarita Villa on 5/31/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        setupView()
    }
    
    func setupView() {
        
        /*
         * Creating a Rectangular View with Constraints
         * 1. create an instance of UIView
         * 2. set translatesAutoresizingMaskIntoConstraints to false
         *      annoying but this has to be set to false to any view
         *      using constraints. Honestly not really sure what it
         *      does.
         * 3. set topAnchor, leftAnchor, rightAnchor, heightAnchor,
         *    to the constraints you want
         *
         */
        
        //#1 Create instance of UIView and give it a background color otherwise you wont see it
        let myTopView = UIView()
        myTopView.backgroundColor = .blue
        //#2 Set translatesAutoresizingMaskIntoConstraints to false
        myTopView.translatesAutoresizingMaskIntoConstraints = false
        
        //#3a Set height of myTopView make sure to use the right constructor
        //of constraint( ) that takes in a CGFloat and not another anchor
        //the height will be 100 tall
        myTopView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        //Now we're going to set from the left edge to the right edge of the screen
        //This means we will need constraints between the viewControllers view property
        //and myTopView. Before creating constraints that involve two views
        //its important that the views share a common ancestor
        //don't worry if that doesn't make sense that just means make sure to add
        //myTopView as a subview of the view property of viewController
        
        //Adding myTopView as a subview of the view property of viewController
        //notice self is viewController, every viewController has a view property
        self.view.addSubview(myTopView)
        
        //Okay myTopView is a subview of the viewControllers view now they can have
        //constraints between the two, if you skip that step and add constraints
        //between them it will crash
        
        //NSLayoutconstraint.activate([array]) is the fast way of activating multiple constraints
        //If you do it like I did the heigthAnchor with isActive = true
        //its just way more cumbersone to write that for EVERY constraint lol 😂
        //like the one above could have been written as follows and it would be the same
//        NSLayoutConstraint.activate([
//            myTopView.heightAnchor.constraint(equalToConstant: 100)
//        ])
        
        NSLayoutConstraint.activate([
            myTopView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0),
            myTopView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0),
            myTopView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
        ])
        
        //This will create a view which I earlier set to 100 tall, that will pin to the
        //left, top and right edges
        

        
        
        //TODO: Create a purple view that is 250 tall and pin it to the left, bottom and right edges
        
        //creating myBottomView as an instance of UIView
        let myBottomView = UIView()
        
        //setting background color of myBottomView to purple
        myBottomView.backgroundColor = .purple
        
        //setting translatesAutoresizingMaskIntoConstraints to false
        myBottomView.translatesAutoresizingMaskIntoConstraints = false
        
        //adding myBottomeView as a subview of view
        self.view.addSubview(myBottomView)
        
        //setting constraints of myBottomView so that it is pinned to bottom of view and height is equal to 250
        NSLayoutConstraint.activate([
            myBottomView.heightAnchor.constraint(equalToConstant: 250),
            myBottomView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0),
            myBottomView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0),
            myBottomView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)

        ])
        
        
        
        
    }


}

