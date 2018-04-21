//
//  GameIntroView.swift
//  DreamPuff
//
//  Created by Makenzie Elliott on 4/21/18.
//  Copyright © 2018 Makenzie Elliott. All rights reserved.
//

import UIKit

class GameIntroView: UIView {
    
    var panel: UIView = UIView()
    var unicornView: UIImageView
    var dreamPuffLabel: UILabel  = {
        let label = UILabel()
        label.text = "Dream Puff"
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.right
        label.font = UIFont(name: "chalkduster", size: 25)
        label.backgroundColor = UIColor.white
        return label
    }()
    var startGameBtn: UIButton = {
        let button = UIButton()
        button.setTitle("start game", for: .normal)
        button.titleLabel!.textColor = UIColor.black
        button.titleLabel!.font = UIFont(name: "chalkduster", size: 10)
//        button.addTarget(self, action: #selector(endGame), for: .touchUpInside)
        button.backgroundColor = UIColor(red: 1.0, green: 0.737254902, blue: 0.8509803922, alpha: 1.0)
        return button
    }()
    
    var resumeGameBtn: UIButton = {
        let button = UIButton()
        button.setTitle("resume game", for: .normal)
        button.titleLabel!.textColor = UIColor.black
        button.titleLabel!.font = UIFont(name: "chalkduster", size: 10)
        //        button.addTarget(self, action: #selector(endGame), for: .touchUpInside)
        button.backgroundColor = UIColor(red: 0.737254902, green: 0.9843137255, blue: 1.0, alpha: 1.0)
        return button
    }()
    
    override init(frame: CGRect) {
        
        unicornView = UIImageView(frame: CGRect(x: 0, y: 100, width: 100, height: 100))
        panel.backgroundColor = UIColor.white

        super.init(frame: frame)
        
        let image = UIImage(named: "lazyunicornicon.png")
        unicornView.image = image;
        
        unicornView.backgroundColor = UIColor(patternImage: UIImage(named:"lazyunicornicon.png")!)
        
        addSubview(panel)
        addSubview(dreamPuffLabel)
        addSubview(unicornView)
        addSubview(startGameBtn)
        addSubview(resumeGameBtn)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        var rect: CGRect = self.bounds
        var rowRect: CGRect
        
        (rowRect, rect) = rect.divided(atDistance: rect.maxY / 4.0, from: .minYEdge)
        (panel.frame, rect) = rect.divided(atDistance: rect.maxY / 4.0, from: .minYEdge)
        unicornView.frame = CGRect(x: panel.frame.minX, y: panel.frame.minY, width: 140, height: 140)
        dreamPuffLabel.frame = CGRect(x: panel.frame.minX + 130, y: panel.frame.minY, width: panel.frame.width - 140, height: 140)
        
        (rowRect, rect) = rect.divided(atDistance: rect.maxY / 5.0, from: .minYEdge)
        
        startGameBtn.frame = CGRect(x: rowRect.minX + 30, y: rowRect.minY + 30, width: rowRect.width - 60, height: rowRect.height - 60)
        
        (rowRect, rect) = rect.divided(atDistance: rect.maxY / 5.0, from: .minYEdge)
        
        resumeGameBtn.frame = CGRect(x: rowRect.minX + 30, y: rowRect.minY + 30, width: rowRect.width - 60, height: rowRect.height - 60)
        
        
        
    }
}
