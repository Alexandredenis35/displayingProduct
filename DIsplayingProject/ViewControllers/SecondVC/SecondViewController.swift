//
//  SecondViewController.swift
//  DIsplayingProject
//
//  Created by Alexandre DENIS on 22/09/2022.
//

import UIKit

class SecondViewController: UIViewController {
    let spb = SegmentedProgressBar(numberOfSegments: 3, duration: 15)

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        spb.frame = CGRect(x: 15, y: 80, width: view.bounds.width - 30, height: 4)
        view.addSubview(spb)
spb.startAnimation()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        touches.forEach {
            print("touch => \($0.location(in: view).x)")
            if $0.location(in: view).x > UIScreen.main.bounds.width / 2 {
                spb.skip()
            } else {
                spb.rewind()
            }
        }
    }
}
