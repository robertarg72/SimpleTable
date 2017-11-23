//
//  ViewController.swift
//  SimpleTable
//
//  Created by Robert Argume on 2017-11-22.
//  Copyright © 2017 Robert Argume. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let movies = [
        "Batman vs Superman", "Blade Runner 2049", "Thor: Ragnorok", "Justice League", "Wonderwoman", "Dark Tower", "Star Wars: The Last Jedi"
    ]
    let simpleTableIdentifier = "SimpleTableIdentifier"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: simpleTableIdentifier)
        }
        cell?.textLabel?.text = movies[indexPath.row]
        return cell!
    }


}

