//
//  LoaderView.swift
//  Animations
//
//  Created by DISMOV on 19/05/22.
//

import UIKit
import Lottie

public class LoaderView: UIView{
    
    private var animationView:AnimationView?
    private var arrAnimate: [String] = ["moody-dog","man-exploring-social","fish", "erroe"]
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        //commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public func commonInit(indx: Int){
        //clearAnim()
        animationView = AnimationView (name: arrAnimate[indx])
        animationView?.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        center = self.center
        animationView?.animationSpeed = 0.3
        animationView?.contentMode = .scaleAspectFill
        self.addSubview(animationView!)
        animationView?.play()
        //animationView.translatesAutoresizingMaskIntoConstraints = false
        //animationView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        //animationView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        //animationView.widthAnchor.constraint(equalToConstant: 280).isActive = true
        //animationView.heightAnchor.constraint(equalToConstant: 108 ).isActive = true
    }
    private func clearAnim(){
        if animationView != nil {
            animationView = nil
        }
    }
    //public func chAnimation(indx: Int){
        //animationView = AnimationView (name: arrAnimate[indx])
        //customize()
        //animationView?.play()
    //}
}
