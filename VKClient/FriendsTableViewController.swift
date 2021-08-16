//
//  FriendsTableViewController.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 13.02.2021.
//

import UIKit

class FriendsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  { //UITableViewController
    
    @IBOutlet weak var tableView: UITableView!
    
    var users = [Users(name: "Tony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])]),
                 Users(name: "Tony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])]),
                 Users(name: "Tony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])]),
                 Users(name: "Tony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])]),
                 Users(name: "Tony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])]),
                 Users(name: "Tony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])]),
                 Users(name: "Tony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])]),
                 Users(name: "Tony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])]),
                 Users(name: "Tony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])]),
                 Users(name: "Tony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])]),Users(name: "Tony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])]),
                 Users(name: "Tony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])]),
                 Users(name: "Pony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])]),
                 Users(name: "Hony Stark", pic : UIImage(named: "0"), status: "I'm Iron man", city: nil, photos:  [UserPhotos(title: "It's me", photos: [ImagePack(img: UIImage(named: "1"),liked: true,num: 20), ImagePack(img: UIImage(named: "2"),liked: false,num: 100), ImagePack(img: UIImage(named: "3"),liked: false,num: 99), ImagePack(img: UIImage(named: "4"),liked: true,num: 9),ImagePack(img: UIImage(named: "5"),liked: false,num: 45), ImagePack(img: UIImage(named: "6"),liked: true,num: 1), ImagePack(img: UIImage(named: "7"),liked: false,num: 3),ImagePack(img: UIImage(named: "8"),liked: true,num: 23), ImagePack(img: UIImage(named: "9"),liked: false,num: 1)]), UserPhotos(title: "My friends and I", photos: [ImagePack(img: UIImage(named: "10"),liked: true,num: 999), ImagePack(img: UIImage(named: "11"),liked: false,num: 5), ImagePack(img: UIImage(named: "12"),liked: true,num: 10), ImagePack(img: UIImage(named: "13"),liked: false,num: 12),ImagePack(img: UIImage(named: "14"),liked: false,num: 19), ImagePack(img: UIImage(named: "15"),liked: true,num: 5)])])]

    var control : CharacterPicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "FriendsTableViewCell", bundle: nil), forCellReuseIdentifier: "friendsCell")
        control = CharacterPicker()
        
        
        users.sort { a, b in a.name < b.name}
        
        var words = [String]()
        for item in users {
            words.append(item.name)
        }
        control?.setup(words: words)
        self.view.addSubview(control!)
        self.view.bringSubviewToFront(control!)
        control?.addTarget(self, action: #selector(scroolToChar), for: .valueChanged)
    
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @objc func scroolToChar() {
        let char = self.control?.selectedChar
        tableView.scrollToRow(at: IndexPath(row: users.firstIndex(where: { a in a.name.first == char})!, section: 0), at: .top
                              , animated: true)
    }
    
   override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        control?.backgroundColor = .gray
        control!.translatesAutoresizingMaskIntoConstraints = false
        self.view.addConstraint(control!.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0))
        self.view.addConstraint(control!.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 0))
        self.view.addConstraint(control!.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0))
        self.view.addConstraint(control!.widthAnchor.constraint(equalToConstant: 100))
    }
    
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendsCell", for: indexPath) as! FriendsTableViewCell
        let container = self.users[indexPath.row]
        cell.fillCell(name: container.name, pic: container.pic, status: container.status, city: container.city)
        return cell
    }
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "friendsPhotoView") as! PhotoFriendsCollectionViewController
        vc.userPhotos = users[indexPath.item].photos
        
        self.navigationController?.pushViewController(vc, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
