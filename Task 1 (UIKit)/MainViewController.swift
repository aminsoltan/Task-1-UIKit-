//
//  ViewController.swift
//  Task 1 (UIKit)
//
//  Created by Amin Soltani on 12/25/1401 AP.
//

import UIKit

class MainViewController: UIViewController {
    let strArray: [String] = ["Spinach","lavender","Rosemary","Basil","Mint","Sage"]
    var str : String = ""
    
    
    @IBOutlet weak var mainTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        
        mainTable.backgroundColor = .systemGreen
        mainTable.delegate = self
        mainTable.dataSource = self
    }
}
extension MainViewController: UITableViewDelegate , UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return strArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTable.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomTableViewCell
        cell.backgroundColor = .systemGreen
        cell.textLabel?.textColor = .white
        cell.label.text = strArray[indexPath.item]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

            let destinationVC =  storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
                destinationVC.stringPassed = strArray[indexPath.item]
        navigationController?.pushViewController(destinationVC, animated: true)
        }
     
    }
    
    


