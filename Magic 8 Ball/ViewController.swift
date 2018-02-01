//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Neal Goyal on 2/1/18.
//  Copyright © 2018 Neal Goyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballView: UIImageView!

    var diceView : Int = 0
    let randomBallNum = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    
    func newBallImage() {
        diceView = Int(arc4random_uniform(4))
        ballView.image = UIImage(named: randomBallNum[diceView])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

