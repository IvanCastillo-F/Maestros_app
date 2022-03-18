//
//  TableGradeViewController.swift
//  Examen_1
//
//  Created by ISSC_612_2022 on 15/03/22.
//

import UIKit

class TableGradeViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source
    let pullToRefreshControl = UIRefreshControl()

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usuario.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ola", for: indexPath)
        cell.textLabel?.text = asig[indexPath.row].std!.nameS + " P1: " + asig[indexPath.row].grades![0]+" P2: " + asig[indexPath.row].grades![1] + " P3: " + asig[indexPath.row].grades![2] + " Asig: " + asig[indexPath.row].name
        
        return cell
    }
   

}
