//
//  ViewController.swift
//  PracticeUI
//
//  Created by Dongik Song on 1/26/24.
//

import UIKit

// 데이터의 그룹화 중 가장 쉬운 방법은 구조체 즉 class를 쓰는것이다.

struct Family {
    let myName : String
    let bestFriendName : String
    let nextFriendName : String
    let myBrother : String
}

class ViewController: UIViewController {
    
    let friendsNames : [String] = ["Henry", "Leeo", "Jay", "Key"]
    // index로 접근하던것을
    
    let koreanNames : [String : String] = ["Henry" : "헨리", "Leeo" : "리오", "Jay" : "제이"]
    // Key값으로 접근.
    
    var count : Int = 0
    let friend = Family(myName: "Henry1", bestFriendName: "Leeo1", nextFriendName: "Jay1", myBrother: "Key1")
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bestFriendNameLabel: UILabel!
    @IBOutlet weak var nextFriendNameLabel: UILabel!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: Any) {
        
        nameLabel.text = friend.myName
        bestFriendNameLabel.text = friend.bestFriendName
        nextFriendNameLabel.text = friend.nextFriendName
        //friend.myBrother
        
        // 이 코드에서는 내가 누군지 등 누구인지는 명확하지 않다
//        nameLabel.text = friendsNames[0]
//        bestFriendNameLabel.text = friendsNames[1]
//        nextFriendNameLabel.text = friendsNames[2]
        
        
//        let friendName = friendsNames[count]
//        
//        nameLabel.text = koreanNames[friendName]
//        
//        count = count + 1
//        
//        if count > 2 {
//            count = 0
//        }
    }
    
}

