//
//  SVLabel.swift
//  ScrollableStackView
//
//  Created by Kanwar Zorawar Singh Rana on 3/23/18.
//  Copyright © 2018 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation
import UIKit

class SVLabel: UILabel {
    
    func getNewHeight() -> CGFloat {
        self.sizeToFit()
        self.setNeedsLayout()
        self.layoutIfNeeded()
        
        return self.frame.height
    }
}
