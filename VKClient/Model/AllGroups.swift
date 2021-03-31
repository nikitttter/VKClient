//
//  AllGroups.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 07.03.2021.
//
import UIKit

class AllGroups{
    let groupName : String
    let groupTheme : String?
    let groupPic : UIImage
    let groupVerification : Bool
    
    init(name : String, theme : String?, pic : UIImage, verification : Bool) {
        groupName = name
        groupTheme = theme
        groupPic = pic
        groupVerification = verification
    }
}
