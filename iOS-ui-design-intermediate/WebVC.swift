//
//  WebVC.swift
//  iOS-ui-design-intermediate
//
//  Created by Roger Perez on 1/25/19.
//  Copyright © 2019 Roger Perez. All rights reserved.
//

import UIKit
import SafariServices

class WebVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showWebContent(_ sender: Any) {
        let url = URL(string: "https://google.com")
        let safariVC = SFSafariViewController(url: url!)
        present(safariVC, animated: true){
            print("presented")
        }
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
