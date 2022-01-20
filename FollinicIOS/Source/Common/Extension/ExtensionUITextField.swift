//
//  ExtensionUITextField.swift
//  MusicQ
//
//  Created by 한지웅 on 2020/07/03.
//  Copyright © 2020 한지웅. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    @IBInspectable public var dynamicTextSize:Bool {
        get {
            return self.dynamicTextSize
        }
        set {
            if(newValue) {
                let bounds = UIScreen.main.bounds
                let height = bounds.size.height

                if let size = self.font?.pointSize {
                    switch height {
                    case 480.0:
                        self.font = self.font?.withSize(size * ConstantsScreenRatio480)
                        break
                    case 568.0: //iphone 5, SE => 4 inch
                        self.font = self.font?.withSize(size * ConstantsScreenRatio568)
                        break
                    case 667.0: //iphone 6, 6s, 7, 8 => 4.7 inch
                        self.font = self.font?.withSize(size * ConstantsScreenRatio667)
                        break
                    case 736.0: //iphone 6s+, 6+, 7+, 8+ => 5.5 inch
                        self.font = self.font?.withSize(size * ConstantsScreenRatio736)
                        break
                    case 780.0 : //iphone 12 mini
                        self.font = self.font?.withSize(size * ConstantsScreenRatio780)
                        break
                    case 812.0: //iphone X, XS => 5.8 inch
                        self.font = self.font?.withSize(size * ConstantsScreenRatio812)
                        break
                    case 844.0: //iphone 12, 12 pro
                        self.font = self.font?.withSize(size * ConstantsScreenRatio844)
                        break
                    case 896.0 : //iphone XR => 6.1 inch // iphone XS MAX => 6.5 inch
                        self.font = self.font?.withSize(size * ConstantsScreenRatio896)
                        break
                    case 926.0 : //iphone 12 pro max
                        self.font = self.font?.withSize(size * ConstantsScreenRatio926)
                        break
                    default:
                        print("not an iPhone")
                        break
                    }

                }
            }
        }
        
    }
}
