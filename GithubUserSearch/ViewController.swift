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
        // Do any additional setup after loading the view.
        salvadorsSetupView()
        
    }
    
    private func salvadorsSetupView() {
        
        /* UIStackView
         * 1. create an instance of a stack view
         * 2. set its axis property to vertical or horizontal
         * 3. set distribution property to fillEqually so its clear how much space each view should take
         * 4. add as many views as you'd like to it
         * 5. the more views you add the less height they're going to have since they take equal space in the stack view
         * 6. place it on the entire screen with constraints following how we did it last lesson
         * 6b. Refresher: set translates... to false, add to subview, activate constraints
         */
        
        //#1
        let stackView = UIStackView()
        //#2 axis property
        stackView.axis = .vertical //try experimenting and set it to horizontal and see what happens
        //#3 set distribution property to fillEqually
        stackView.distribution = .fillEqually
        //#4 create the views and add them to the stack view with the addArrangedSubview method
        let firstView = UIView()
        firstView.backgroundColor = .cyan //set any color here so we can see it on the screen
        let secondView = UIView()
        secondView.backgroundColor = .orange
        
        //#5
        //first view added to stack view here
        stackView.addArrangedSubview(firstView)
        stackView.addArrangedSubview(secondView)
        
        //#6 now you can forget about first and second view and will put the stackView on the screen, it now holds first and second view so we don't have to interact with them any longer
        self.view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            stackView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0),
            stackView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
        ])
        
        //Homework: in viewdidLoad get rid of salvadorsSetupView and replace with margaritasSetupView write your code in margaritasSetupView
        //Create a horizontal stackView 100 tall pinned to the bottom of the screen with five views with different background colors that have equal distribution
        //Feel free to mess around with my stackView example to get a feel for it
        //Try adding more views to the stack view with other colors
        //Try changing the axis to horizontal,
        //Try adding spacing to the stackView.spacing property
        //I wouldn't change the fillEqually property
        //For the homework note that you can set a constraint on the height property of the stackView
        //Also last thing to experiment in the constraints change the constant property of 0 to different things try 25 for all of them, you may need to make some of them negative for it to look good
    }
    
    private func margaritasSetupView() {
        
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

