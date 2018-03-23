//
//  ViewController.swift
//  ScrollableStackView
//
//  Created by Kanwar Zorawar Singh Rana on 3/23/18.
//  Copyright © 2018 Kanwar Zorawar Singh Rana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackViewHeighLC: NSLayoutConstraint!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet var labels : [SVLabel]!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        stackViewHeighLC.constant = 800
    }

    @IBAction func getTextAction(_ sender: Any) {
        
        let random = Int(arc4random()%3)
        let label = labels[random]
        let string = label.text ?? ""
        let oldHeight = label.getNewHeight()
        label.text =  string + "This is the line of text to display."
        let height = abs(label.getNewHeight() - oldHeight)

         stackViewHeighLC.constant = stackViewHeighLC.constant + height
        
        
    }
    
}

