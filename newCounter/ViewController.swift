//
//  ViewController.swift
//  newCounter
//
//  Created by 배현빈 on 5/21/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var labelLIst: [UILabel]!
    
    @IBOutlet var oneLabel: UILabel!
    @IBOutlet var twoLabel: UILabel!
    @IBOutlet var threeLabel: UILabel!
    @IBOutlet var fourLabel: UILabel!
    @IBOutlet var fiveLabel: UILabel!
    @IBOutlet var sixLabel: UILabel!
    @IBOutlet var sevenLabel: UILabel!
    @IBOutlet var eightLabel: UILabel!
    @IBOutlet var nineLabel: UILabel!
    
     // 배열로 연결
    
    var oneCount = 0
    var twoCount = 1
    var threeCount = 2
    var fourCount = 3
    var fiveCount = 4
    var sixCount = 5
    var sevenCount = 6
    var eightCount = 7
    var nineCount = 8
    
    var count = [0,0,0,0,0,0,0,0,0]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    //제스처는 항상 user interaction이 켜져 있어야 함
    
    @IBAction func emotionTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    @IBAction func oneButtonClicked (_ sender: UIButton) {
        
        count[sender.tag] = count[sender.tag] + 1
        
        // Outlet Collection 활용하기
        
        //labelList[sender.tag] = count[sender.tag] + 1
        
        
        print(sender.tag)
        
        if sender.tag == 0 {
            count[sender.tag] = count[sender.tag] + 1
        } else if sender.tag == 1 {
            count[sender.tag] = count [sender.tag] + 1
        } else {
            count[2] = count [2] + 1
        }
        
        
        oneLabel.text = "\(count[0])회"
        twoLabel.text = "\(count[0])회"
        threeLabel.text = "\(count[0])회"
        fourLabel.text = "\(count[0])회"
        fiveLabel.text = "\(count[0])회"
        sixLabel.text = "\(count[0])회"
        sevenLabel.text = "\(count[0])회"
        eightLabel.text = "\(count[0])회"
        nineLabel.text = "\(count[0])회"
        
        
        if sender.currentTitle! == "onlyImage" {
            oneLabel.text = "\(oneCount)회"
            oneCount = oneCount + 1
        } else {
            twoLabel.text = "\(twoCount)회"
            twoCount = twoCount + 1
        } else {
            threeLabel.text = "\(threeCount)회"
            threeCount = threeCount + 1
        } else {
            fourLabel.text = "\(fourCount)회"
            fourCount = fourCount + 1
        } else {
            fiveLabel.text = "\(fiveCount)회"
            fiveCount = fiveCount + 1
        } else {
            sixLabel.text = "\(sixCount)회"
            sixCount = sixCount + 1
        } else {
            sevenLabel.text = "\(sevenCount)회"
            sevenCount = sevenCount + 1
        } else {
            eightLabel.text = "\(eightCount)회"
            eightCount = eightCount + 1
        } else {
            nineLabel.text = "\(nineCount)회"
            nineCount = nineCount + 1
        }
        
            
        func desingLabelUI (_ a : UILabel, thisIsTextColor tc : UIColor) {
            
            a.textColor = tc
            a.font = .boldSystemFont(ofSize: 30)
            a.textAlignment = .center
        }
        
        func designButtonUI (_ button : UIButton, thisIsTitleColor tic : UIColor, title: String) {
            
            
            
        }
        
        
    }
}





