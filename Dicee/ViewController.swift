//
//  ViewController.swift
//  Dicee
//
//  Created by Rahul Ravi Prakash on 08/06/18.
//  Copyright © 2018 Rahul Ravi Prakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var randomDiceIndex1 : Int = 0
	var randomDiceIndex2 : Int = 0
	
	let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

	@IBOutlet weak var diceImage1: UIImageView!
	@IBOutlet weak var diceImage2: UIImageView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		updateDiceImage()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func rollButtonPressed(_ sender: Any) {
		
		updateDiceImage()
	}
	
	func updateDiceImage() {
		randomDiceIndex1 = Int(arc4random_uniform(6))
		randomDiceIndex2 = Int(arc4random_uniform(6))
		
		diceImage1.image = UIImage(named: diceArray[randomDiceIndex1])
		diceImage2.image = UIImage(named: diceArray[randomDiceIndex2])
	}
	
	override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
		updateDiceImage()
	}
}

