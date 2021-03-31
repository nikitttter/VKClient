//
//  GlobalGroupsTableViewController.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 23.02.2021.
//

import UIKit

class GlobalGroupsTableViewController: UITableViewController {
    
    var root : UIViewController? = nil
    
    var globalGroups = [AllGroups(name: "Пикабу", theme: "юмор", pic: UIImage(named: "pikabu")!, verification: true),
                       AllGroups(name: "SokoL[off]: Про Поп-культуру", theme: nil, pic: UIImage(named: "sokoloff")!, verification: true),
                       AllGroups(name: "Пикабу Познавательный", theme: "Образование", pic: UIImage(named: "pikabupoz")!, verification: true),
                       AllGroups(name: "Nexign Team", theme: nil, pic: UIImage(named: "nexign")!, verification: true),
                       AllGroups(name: "Apple", theme: "Мобильные технологии", pic: UIImage(named: "apple")!, verification: false),
                       AllGroups(name: "Яндекс", theme: "Программное обеспечение", pic: UIImage(named: "yandex")!, verification: false),
                       AllGroups(name: "Клевер", theme: "Приложение", pic: UIImage(named: "klever")!, verification: true),
                       AllGroups(name: "Дивные Питер", theme: "Городское сообщество", pic: UIImage(named: "piter")!, verification: false),
                       AllGroups(name: "CocoaHeads Russia", theme: "Мобильные технологии", pic: UIImage(named: "cocoaheads")!, verification: true),
                       AllGroups(name: "ФК «Зенит»", theme: "Футбольная команда", pic: UIImage(named: "zenit")!, verification: false),
                       AllGroups(name: "Рик и Морти | Rick and Morty | Ждём 5 сезон! ", theme: "Сериал", pic: UIImage(named: "rickandmorty")!, verification: false),
                       AllGroups(name: "/dev/null ", theme: "Программирование", pic: UIImage(named: "devnull")!, verification: true)]
                       
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "GroupsTableViewCell", bundle: nil), forCellReuseIdentifier: "globalGroupCellIdentifier")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return globalGroups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "globalGroupCellIdentifier", for: indexPath) as! GroupsTableViewCell
        let container = self.globalGroups[indexPath.item]
        
        cell.fillCell(name: container.groupName, pic: container.groupPic, theme: container.groupTheme, verification: container.groupVerification)
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let addAction = UIContextualAction(style: .normal, title: "Add") { _,_, complite in
            
            let prevVC = self.root as! GroupsTableViewController
            
            if !prevVC.usersGroups.contains(where: { item in
                return self.globalGroups[indexPath.item].groupName == item.groupName
                
            }) {
                prevVC.usersGroups.append(self.globalGroups[indexPath.item])
                self.navigationController?.popViewController(animated: true)
            }
        
            complite(true)
        }
        addAction.backgroundColor = .green
        
        return UISwipeActionsConfiguration(actions: [addAction])
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
