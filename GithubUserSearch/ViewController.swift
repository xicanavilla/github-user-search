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
    


}

