//
//  PictureBookTableViewController.swift
//  2018PicBookTableCellAnimation
//
//  Created by Chang Sophia on 1/16/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit

class PictureBookTableViewController: UITableViewController {
   
    let bookNames = ["【Papa Please Get The Moon For Me】", "【We Are Going On A Bear Hunt】", "【What's The Time, Mr. Wolf?】", "【Go Away, Big Green Monster】", "【Eat Your Peas】", "【Handa's Surprise】","【Guess How Much I Love Youe】", "【Bark, George】", "【Santa's Beard】" ,"【From Head to Toe】", "【The Journey Home from Grandpa】","【Beekle】"]
    let illustrotors = ["Eric Carle", "Michael Rosen", "Debbie", "Ed Emberley", "Nick Sharratt", "Eileen Browne", "Sam McBratney", "Jules Feiffer","Nick Sharratt", "Eric Carle", "Jemima Lumley", "Dan Santat"]
    let bookCovers = ["papaCover", "bearCover", "wolfCover", "monsterCover","peaCover","handaCover","guessCover", "barkCover", "santaCover", "headCover", "grandpaCover", "beekleCover"]
    
    // Solution to exercise
    var postShown = [Bool](repeating: false, count: 13)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 266.0
        tableView.rowHeight = UITableView.automaticDimension
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .automatic
    }
    
    
    //UITableViewDelegate Methods
    override func tableView(_ talbeView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath){
        
        if postShown[indexPath.row] {
            return
        }
    //已display的不重覆
        postShown[indexPath.row] = true
   
    //旋轉特效
    
        //let rotationAngleInRadians = 90.0 * CGFloat(Double.pi/180.0)
        //radian弧度表示旋轉的角度, 角度degree以弧度表示，先將degree轉換為弧度，CATransform3DIdentity後為xyz軸
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 50, 0)
        cell.layer.transform = rotationTransform
        //動畫結束之後
        UIView.animate(withDuration: 1.0, animations: { cell.layer.transform = CATransform3DIdentity})
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return bookNames.count
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as!
            PictureBookTableViewCell
            
            cell.bookNameLabel.text = bookNames[(indexPath as NSIndexPath as NSIndexPath).row]
            cell.illustratorLabel.text = illustrotors[(indexPath as NSIndexPath as NSIndexPath).row]
            cell.bookCoverImage.image = UIImage(named: bookCovers[(indexPath as NSIndexPath).row])
            
            return cell
     
}
    
}
