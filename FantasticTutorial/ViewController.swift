//
//  ViewController.swift
//  FantasticTutorial
//
//  Created by Bhagya on 19/09/18.
//  Copyright © 2018 Bhagya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    var colorCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.changeColors()
        print("colors")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func changeColors(){

        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in  //1
            UIView.animate(withDuration: 2.0) {  //2
                self.view.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor  //3
                self.colorCounter+=1  //4
            }
        }
        
        scheduledColorChanged.fire()
    }

}

