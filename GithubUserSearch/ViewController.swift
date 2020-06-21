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
        margaritasSetupView()
        // Do any additional setup after loading the view.
        
    }
    
    func salvadorsSetupView() {
        view.backgroundColor = .white
        
        // Layouts usually have say a view or stackview of a specific height
        // at the top and then another view that takes up the rest of the screen
        // this view will be variable height depending on the kind of device used
        // unlike the view with the fixed height
        
        let topStackView = UIStackView()
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topStackView) //you don't need to say self.view to access view property, only in a closure we'll see that later
        
        //Will set to 100 wide in a constraint
        let leftTopView = UIView()
        leftTopView.translatesAutoresizingMaskIntoConstraints = false //not sure if this is necessary but when in doubt do it
        leftTopView.backgroundColor = .cyan
        
        //Will let this take up the rest of the width of the screen (width - 100) basically
        let rightTopView = UIView()
        rightTopView.translatesAutoresizingMaskIntoConstraints = false //same as the comment for leftView
        rightTopView.backgroundColor = .orange
        
        //This is what you were asking about
        let viewsForTopStack = [leftTopView, rightTopView]
        for item in viewsForTopStack {
            topStackView.addArrangedSubview(item)
        }
        
        NSLayoutConstraint.activate([
            leftTopView.widthAnchor.constraint(equalToConstant: 100),
            topStackView.heightAnchor.constraint(equalToConstant: 200),
            topStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            topStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            topStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
        ])
        
        //Comment everything below this line to see what it looks like up to this point
        //You can comment all by highlighting the lines then command + /
        
        
        let bottomView = UIView()
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomView)
        
        bottomView.backgroundColor = .magenta

        //We want the bottom of topStackView to line up with the top of bottomView
        //And bottomView should end at the bottom of the viewControllers view property

        NSLayoutConstraint.activate([
            bottomView.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant: 0),
            bottomView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            bottomView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
        
        
        //Homework: make a bottom horizontal stackView with 150 tall with pinned to the
        //bottom edges and have two views in the stackView, make the first one 50 wide
        //and the second view take up the rest of the space
        
        //Afterwards add an additional view that starts at the top of the viewControllers
        //view and then connects to the bottomStackView
        
        
        
        
    }
    
    func margaritasSetupView() {
        
        let bottomStackView = UIStackView()
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomStackView)
        
        let leftBottomView = UIView()
        leftBottomView.translatesAutoresizingMaskIntoConstraints = false
        leftBottomView.backgroundColor = .darkGray
        
        let rightBottomView = UIView()
        rightBottomView.translatesAutoresizingMaskIntoConstraints = false
        rightBottomView.backgroundColor = .systemIndigo
        
        let viewsForBottomStack = [leftBottomView, rightBottomView]
        for item in viewsForBottomStack {
            bottomStackView.addArrangedSubview(item)
        }
        
        NSLayoutConstraint.activate([
            leftBottomView.widthAnchor.constraint(equalToConstant: 50),
            bottomStackView.heightAnchor.constraint(equalToConstant: 150),
            bottomStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            bottomStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            bottomStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            
        ])
        
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topView)
        
        topView.backgroundColor = .purple
        
        NSLayoutConstraint.activate([
            topView.bottomAnchor.constraint(equalTo: bottomStackView.topAnchor, constant: 0),
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            topView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            topView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0)
        ])
        
        
    }


}

