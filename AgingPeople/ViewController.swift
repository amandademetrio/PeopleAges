//
//  ViewController.swift
//  AgingPeople
//
//  Created by Amanda Demetrio on 9/10/18.
//  Copyright © 2018 Amanda Demetrio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var names: [(String,Int)] = [
            ("Amanda",Int(arc4random_uniform(90)) + 5),
            ("Mike",Int(arc4random_uniform(90)) + 5),
            ("Alfie",Int(arc4random_uniform(90)) + 5),
            ("Eduardo",Int(arc4random_uniform(90)) + 5),
            ("Sophia",Int(arc4random_uniform(90)) + 5),
            ("Afranio",Int(arc4random_uniform(90)) + 5),
            ("Cris",Int(arc4random_uniform(90)) + 5),
            ("Joao",Int(arc4random_uniform(90)) + 5),
            ("Conceicao",Int(arc4random_uniform(90)) + 5),
            ("Dynorah",Int(arc4random_uniform(90)) + 5),
            ("Soter",Int(arc4random_uniform(90)) + 5),
            ("Luis",Int(arc4random_uniform(90)) + 5),
            ("Araci",Int(arc4random_uniform(90)) + 5),
            ("Marilia",Int(arc4random_uniform(90)) + 5),
            ("Milena",Int(arc4random_uniform(90)) + 5),
            ("Matheus",Int(arc4random_uniform(90)) + 5)
        ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    // How many cells are we going to need?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    // How should I create each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create/populate it with data then return it
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row].0
        cell.detailTextLabel?.text = "\(names[indexPath.row].1) years old"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
    }
    
}
