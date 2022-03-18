//
//  TableViewController.swift
//  Examen_1
//
//  Created by ISSC_612_2022 on 08/03/22.
//

import UIKit

var position :Int = 0

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Usuarios Registrados"
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        self.refreshControl = pullToRefreshControl
        pullToRefreshControl.addTarget(self, action: #selector(refreshTable), for: .valueChanged)
   
    }
    
    @objc func refreshTable(){
        
        usuario = usuarioNube
        self.tableView.reloadData()
        pullToRefreshControl.endRefreshing()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = usuario[indexPath.row].name + " " + usuario[indexPath.row].lastName
        
        return cell
    }

    //MARK: Table View Delegate
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            usuario.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .middle)
        }else if editingStyle == .insert{
            
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        position = indexPath.row
    }

}
