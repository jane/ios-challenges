//
//  LeftToRightIconTableViewCell.swift
//  20180622
//
//  Created by Nic Laughter on 6/22/18.
//  Copyright © 2018 Jane. All rights reserved.
//

import UIKit

class LeftToRightIconTableViewCell: UITableViewCell {
    
    @IBOutlet var backingView: LeftToRightIconBackgroundView!
    @IBOutlet var backingViewTrailingConstraint: NSLayoutConstraint!
    
    func setUp(with person: Person, andMaxScore maxScore: Int) {        
        let percentageOfMax = person.score * 100 / maxScore
        let viewWidth = self.bounds.width / 100 * CGFloat(percentageOfMax)
        backingViewTrailingConstraint.constant = self.bounds.width - viewWidth
        
        backingView.setUp(with: person, backgroundColor: .blue)
    }
}
