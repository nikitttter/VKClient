//
//  Users.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 13.03.2021.
//

import UIKit

class Users {
    var name : String
    var pic : UIImage?
    var status : String?
    var city : String?
    var photos : [UserPhotos?]
    
    init(name : String, pic : UIImage?, status : String?, city : String? ,photos : [UserPhotos?]) {
        self.name = name
        self.photos = photos
        self.pic = pic
        self.city = city
        self.status = status
    }
}

class UserPhotos {
    var title : String
    var photos : [ImagePack]
    
    init(title : String, photos : [ImagePack]) {
        self.title = title
        self.photos = photos
    }
}

class ImagePack {
    var img : UIImage
    var liked : Bool
    var numLikes : Int
    
    init(img : UIImage?, liked : Bool, num : Int) {
        self.img = img!
        self.liked = liked
        self.numLikes = num
    }
}
