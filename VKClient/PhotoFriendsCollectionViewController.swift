//
//  PhotoFriendsCollectionViewController.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 27.02.2021.
//

import UIKit

private let reuseIdentifier = "photofriendscell"

class PhotoFriendsCollectionViewController: UICollectionViewController {

    var pinchGestureAnchorScale: CGFloat?
    
    //lazy var tapGestureRecognizer : UITapGestureRecognizer =
        lazy var pinchGestureRecognizer : UIPinchGestureRecognizer = {

            let recognizer = UIPinchGestureRecognizer(target: self, action: #selector(handlePinchRecognizer(_:)))
            recognizer.delegate = self

        return recognizer
    }()
    var step: CGFloat = 0
    
    var numberPic : CGFloat = 3 {
        didSet{
            if (numberPic > 5 || numberPic < 1) {
                numberPic = oldValue
            }
        }
    }
    var userPhotos : [UserPhotos?]?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView.register(UINib(nibName: "PhotoFriendsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
        self.collectionView.register(UINib(nibName: "PhotoHeaderCollectionReusableView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "photoHeader")
        view.addGestureRecognizer(pinchGestureRecognizer)
                
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return userPhotos?.count ?? 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return userPhotos?[section]?.photos.count ?? 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PhotoFriendsCollectionViewCell
        cell.userPic.image = userPhotos?[indexPath.section]?.photos[indexPath.item].img
        cell.likeControl.setup(number: userPhotos?[indexPath.section]?.photos[indexPath.item].numLikes ?? 0, me: userPhotos?[indexPath.section]?.photos[indexPath.item].liked ?? false)
        cell.userPic.contentMode = .scaleToFill
        cell.data = userPhotos
        cell.indexPath = indexPath
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "photoHeader", for: indexPath) as! PhotoHeaderCollectionReusableView
        header.albumName.text = userPhotos?[indexPath.section]?.title
        return header
    }
    
    
  
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: {(_) in
            self.collectionViewLayout.invalidateLayout()
            
        }, completion: nil)
    }
    
    @objc func handlePinchRecognizer(_ gestureRecognizer : UIPinchGestureRecognizer){
                
        switch gestureRecognizer.state {
        
        case .began :
            self.pinchGestureAnchorScale = gestureRecognizer.scale
            
        case .changed :

            step += gestureRecognizer.scale - self.pinchGestureAnchorScale!
            self.pinchGestureAnchorScale! = gestureRecognizer.scale
        
        case .ended, .cancelled :
            
            self.pinchGestureAnchorScale = nil
            step.round(.toNearestOrEven)
        
        default:
                assert(pinchGestureAnchorScale == nil)
                break
        }
        
        
        switch step {
        case 1...5:

            numberPic = 6-step
            self.collectionViewLayout.invalidateLayout()
        default:
            step = 6-numberPic
        }
    }    
}

extension PhotoFriendsCollectionViewController: UICollectionViewDelegateFlowLayout, UIGestureRecognizerDelegate{

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let interitemspace = self.collectionView(collectionView, layout: collectionViewLayout, minimumInteritemSpacingForSectionAt: indexPath.section)
        
        let size = ((collectionView.frame.width - collectionView.safeAreaInsets.left - collectionView.safeAreaInsets.right - interitemspace * (self.numberPic - 1)) / self.numberPic).rounded(.down)
        return CGSize(width: size, height: size)

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: collectionView.frame.width, height: 35)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: collectionView.safeAreaInsets.left, bottom: 5, right: collectionView.safeAreaInsets.right)
    }

    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return false
    }

    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return false
    }
}
