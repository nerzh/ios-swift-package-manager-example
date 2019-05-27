//
//  ViewController.swift
//  ios-swift-package-manager-example
//
//  Created by Oleh Hudeichuk on 5/27/19.
//  Copyright © 2019 Oleh Hudeichuk. All rights reserved.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//
//}

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire
            .request(URL(string: "https://www.google.com")!)
            .response { (response: DefaultDataResponse) in
                print(response.response?.statusCode ?? "No reply")
        }
    }
    
}


