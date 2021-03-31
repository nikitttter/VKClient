//
//  FriendsTableViewController.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 13.02.2021.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    var users = [Users(name: "Tony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4")!,UIImage(named: "5"), UIImage(named: "6"), UIImage(named: "7"), UIImage(named: "8"), UIImage(named: "9")]), UserPhotos(title: "My friends and I", photos: [UIImage(named: "10"), UIImage(named: "11"), UIImage(named: "12"), UIImage(named: "13")!,UIImage(named: "14"), UIImage(named: "15")])]), Users(name: "Piter Parker", pic : UIImage(named: "apple"), status: "Your friendly neighbor Spiderman", city: "NY", photos:  [UserPhotos(title: "test1", photos: [UIImage(named: "apple"), UIImage(named: "klever"), UIImage(named: "nexign"), UIImage(named: "piter")!,UIImage(named: "apple"), UIImage(named: "klever"), UIImage(named: "nexign"), UIImage(named: "piter")]), UserPhotos(title: "test2", photos: [UIImage(named: "apple"), UIImage(named: "klever"), UIImage(named: "nexign"), UIImage(named: "piter")!,UIImage(named: "apple"), UIImage(named: "klever"), UIImage(named: "nexign"), UIImage(named: "piter")])])]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "FriendsTableViewCell", bundle: nil), forCellReuseIdentifier: "friendsCell")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendsCell", for: indexPath) as! FriendsTableViewCell
        let container = self.users[indexPath.row]
        
        cell.fillCell(name: container.name, pic: container.pic, status: container.status, city: container.city)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "friendsPhotoView") as! PhotoFriendsCollectionViewController
        vc.userPhotos = users[indexPath.item].photos
        
        self.navigationController?.pushViewController(vc, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
