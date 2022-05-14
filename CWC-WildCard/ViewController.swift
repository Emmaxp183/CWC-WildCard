//
//  ViewController.swift
//  CWC-WildCard
//
//  Created by macbook on 10/05/2022.
//

import UIKit

class ViewController: UIViewController {

   ///CARDS
    
    
    
    @IBOutlet weak var LeftCard: UIImageView!
    
    @IBOutlet weak var RightCard: UIImageView!
    
    //NUMBERS
    
    @IBOutlet weak var PlayerNumber: UILabel!
    
    @IBOutlet weak var ScoreNumber: UILabel!
   
    var LeftScore = 0
    var RightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


 ///CONTROLLERS / ACTIONS


    @IBAction func DealButton(_ sender: Any) {
        //GENERATING RANDOM NUMBERS
        let LeftCardNum = Int.random(in: 2...14)
        let RightCardNum = Int.random(in: 2...14)
        
        ///ACTIONS
 LeftCard.image = UIImage(named: "card\(LeftCardNum)")
 RightCard.image = UIImage(named: "card\(RightCardNum)")
        
      //OPTIONAL STATEMENTS
        if LeftCardNum > RightCardNum {
            // LEFT WINS
            LeftScore += 1
            PlayerNumber.text = String(LeftScore)
        
        }else if RightCardNum > LeftCardNum{
       //RIGHT WINS
            RightScore += 1
            ScoreNumber.text = String(RightScore)
            
            
            
        }else{
            
            //
            
            
        }
        
        
        
        
        
        
    
    
    }
    


}

