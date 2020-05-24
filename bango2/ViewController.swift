//
//  ViewController.swift
//  bango2
//
//  Created by Chihiro Nishiwaki on 2020/05/24.
//  Copyright © 2020 Nishiwaki sen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var name:[String] = ["いち","にい","さん","しい","ごお"]
    var indent: Int = 0
    
    @IBAction func first() {
        indent = 0
        nameLabel.text = name[indent]
        numberLabel.text = "\(indent)ばんめ"
    }
    
    @IBAction func second() {
        indent = 1
        nameLabel.text = name[indent]
        numberLabel.text = "\(indent)ばんめ"
    }
    
    @IBAction func third() {
        indent = 2
        nameLabel.text = name[indent]
        numberLabel.text = "\(indent)ばんめ"
    }
    
    @IBAction func next(){
        if indent < 5 {
            indent = indent + 1
            nameLabel.text = name[indent]
            numberLabel.text = "\(indent)ばんめ"
        }else{
            indent = 0
            nameLabel.text = name[indent]
            numberLabel.text = "\(indent)ばんめ"
        }
    }
    
    @IBAction func back() {
        if indent != 0 {
            indent = indent - 1
        }
    }



}

