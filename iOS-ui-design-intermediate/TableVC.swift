//
//  TableVC.swift
//  iOS-ui-design-intermediate
//
//  Created by Roger Perez on 1/25/19.
//  Copyright © 2019 Roger Perez. All rights reserved.
//

import UIKit

class TableVC: UIViewController, UITableViewDataSource {

    let data:[String] = ["item1", "item2", "item3"]
    let subs:[String] = ["sub1","sub2","sub3"]
    
    let titles:[String] = ["First", "Second"]
    let colors:[UIColor] = [.red, .green, .blue]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
//        titles[section]
        return "Roger Roger"
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        data[section].count
        return data.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = subs[indexPath.row]
        cell.imageView?.image = UIImage(named: "roger")?.withRenderingMode(.alwaysTemplate)
        cell.imageView?.tintColor = colors[indexPath.row]
        return cell
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
