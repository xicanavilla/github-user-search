//
//  NetworkingViewController.swift
//  GithubUserSearch
//
//  Created by Margarita Villa on 12/20/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import UIKit

class NetworkingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        makeNetworkCall()
        
    }
    
    private func setupView(){
        view.backgroundColor = .purple
        
    }
    
    private func makeNetworkCall(){
        let session = URLSession.shared
        let urlStr = "https://api.github.com/search/repositories?q=swift"
        guard let url = URL(string: urlStr) as? URL else {
            return
        }
        let urlRequest = URLRequest(url: url)
        
        let dataTask = session.dataTask(with: urlRequest) { (data: Data?, response: URLResponse?, error: Error?) in
            guard let response = response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 else{
                print("the response failed")
                return
            }
            
            guard let data = data else { return }
            
            do{
                let niceSearchModel = try JSONDecoder().decode(SearchModel.self, from: data)
                print(niceSearchModel)
                print(niceSearchModel.incompleteResults)
                print(niceSearchModel.totalCount)
            } catch (let error){
                print(error)
                
            }
            print("5")

            
//            guard let jsonStr = String(data: data, encoding: .utf8) else {return}
//            print(jsonStr)
            
            
            
//            if(theResponse.statusCode == 420) {
////                log them out
//            }
            
            
        }
        
        dataTask.resume()
        
        
        
//        let request = URLRequest(url: <#T##URL#>)
//        session.dataTask(with: <#T##URLRequest#>)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
