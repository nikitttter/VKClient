//
//  GroupsTableViewController.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 23.02.2021.
//

import UIKit

class GroupsTableViewController: UITableViewController {
    var root : UIViewController? = nil
    var usersGroups = [AllGroups(name: "Пикабу", theme: "юмор", pic: UIImage(named: "pikabu")!, verification: true),
                       AllGroups(name: "SokoL[off]: Про Поп-культуру", theme: nil, pic: UIImage(named: "sokoloff")!, verification: true),
                       AllGroups(name: "/dev/null ", theme: "Программирование", pic: UIImage(named: "devnull")!, verification: true),
                       AllGroups(name: "Пикабу Познавательный", theme: "Образование", pic: UIImage(named: "pikabupoz")!, verification: true),
                       AllGroups(name: "Nexign Team", theme: nil, pic: UIImage(named: "nexign")!, verification: true),
                       AllGroups(name: "CocoaHeads Russia", theme: "Мобильные технологии", pic: UIImage(named: "cocoaheads")!, verification: true)]
    
    
    @IBAction func searchGroupButton(_ sender: Any) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "globalGroupsView") as! GlobalGroupsTableViewController
        
        vc.root = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "GroupsTableViewCell", bundle: nil), forCellReuseIdentifier: "userGroupCellIdentifier")
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.usersGroups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userGroupCellIdentifier", for: indexPath) as! GroupsTableViewCell
        let container = self.usersGroups[indexPath.item]
        cell.fillCell(name: container.groupName, pic: container.groupPic, theme: container.groupTheme, verification: container.groupVerification)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }


    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            usersGroups.remove(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
