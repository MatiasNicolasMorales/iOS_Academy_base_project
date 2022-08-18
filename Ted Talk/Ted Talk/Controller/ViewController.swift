//
//  ViewController.swift
//  Ted Talk
//
//  Created by Gonzalo Perretti on 4/6/21.
//

import UIKit

class ViewController: UITableViewController {
// MARK: - Properties
    let reuseIdentifier = "tedTalksCells"
    let data = TedTalksManager().talks
    
// MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureTableView()
        
    }
    
    func configureTableView() {
        tableView.backgroundColor = .lightGray
        
        tableView.tableFooterView = UIView()
    }
}

    extension ViewController {
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
            let mydata = data[indexPath.row]
            cell.textLabel?.adjustsFontSizeToFitWidth = true
            cell.textLabel?.text = "Main-Speacker: \(mydata.mainSpeaker.capitalized)"
            cell.detailTextLabel?.text = mydata.tedTalksModelDescription.capitalized
            
            return cell
        }
        
    }


