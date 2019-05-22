//
//  CustomView.swift
//  MovieApp
//
//  Created by Minjing Shi on 5/19/19.
//  Copyright © 2019 Minjing Shi. All rights reserved.
//

import UIKit

class CustomView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override init(image: UIImage?) {
        super.init(image: image)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.height / 8
        self.clipsToBounds = true
    }

}
