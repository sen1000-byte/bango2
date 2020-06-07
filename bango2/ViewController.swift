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
    
    func print() {
        numberLabel.text = "\(indent)ばんめ"
        nameLabel.text = name[indent]
    }
    
    @IBAction func first() {
        indent = 0
        print()
    }
    
    @IBAction func second() {
        indent = 1
        print()
    }
    
    @IBAction func third() {
        indent = 2
        print()
    }
    
    @IBAction func next(){
        if indent < 4 {
            indent = indent + 1
        }else{
            indent = 0
        }
        print()
    }
    
    @IBAction func back() {
        if indent != 0 {
            indent = indent - 1
        }else {
            indent = 4
        }
        print()
    }
    


}

