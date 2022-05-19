//
//  ViewController.swift
//  Animations
//
//  Created by DISMOV on 17/05/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet weak var animationView: AnimationView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    private var animView:LoaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .cyan
        segmentedControl.selectedSegmentIndex = UISegmentedControl.noSegment
    }
    @IBAction func segmentedChanged(sender: UISegmentedControl) {
        if animView != nil { animView.removeFromSuperview()  }
        let sg = sender.selectedSegmentIndex
        animView = LoaderView()     
        animView.frame.size = CGSize(width: 400, height: 400)
        animView.center = self.view.center
        view.addSubview(animView)
        animView.commonInit(indx:sg)
    }
}

