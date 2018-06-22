//
//  LeftToRightIconBackgroundView.swift
//  20180622
//
//  Created by Nic Laughter on 6/22/18.
//  Copyright © 2018 Jane. All rights reserved.
//

import UIKit

class LeftToRightIconBackgroundView: UIView {
    
    @IBOutlet private var iconImageView: UIImageView!
    @IBOutlet private var scoreLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [.topRight, .bottomRight], cornerRadii: CGSize(width: self.bounds.height / 2, height: self.bounds.height / 2))
        let maskLayer = CAShapeLayer()
        
        maskLayer.path = path.cgPath
        self.layer.mask = maskLayer
        
        self.iconImageView.clipsToBounds = true
        self.iconImageView.layer.cornerRadius = self.iconImageView.bounds.height / 2
    }
    
    func setUp(with person: Person, backgroundColor: UIColor) {
        self.scoreLabel.text = "\(person.score)"
        self.backgroundColor = backgroundColor
        if let filePath = Bundle.main.path(forResource: person.imageName, ofType: "jpg") {
            self.iconImageView.image = UIImage(contentsOfFile: filePath)
        }
    }
}
