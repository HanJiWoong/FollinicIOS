//
//  ExtensionUIButton.swift
//  MusicQ
//
//  Created by 한지웅 on 2020/07/03.
//  Copyright © 2020 한지웅. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    @IBInspectable public var dynamicTitleSize:Bool {
        get {
            return self.dynamicTitleSize
        }
        set {
            if(newValue) {
                let bounds = UIScreen.main.bounds
                let height = bounds.size.height
                let title = self.titleLabel
                 

                if let size = title?.font.pointSize {
                    switch height {
                    case 480.0:
                        self.titleLabel?.font = self.titleLabel?.font.withSize(size * ConstantsScreenRatio480)
                        break
                    case 568.0: //iphone 5, SE => 4 inch
                        self.titleLabel?.font = self.titleLabel?.font.withSize(size * ConstantsScreenRatio568)
                        break
                    case 667.0: //iphone 6, 6s, 7, 8 => 4.7 inch
                        self.titleLabel?.font = self.titleLabel?.font.withSize(size * ConstantsScreenRatio667)
                        break
                    case 736.0: //iphone 6s+, 6+, 7+, 8+ => 5.5 inch
                        self.titleLabel?.font = self.titleLabel?.font.withSize(size * ConstantsScreenRatio736)
                        break
                    case 780.0 : //iphone 12 mini
                        self.titleLabel?.font = self.titleLabel?.font.withSize(size * ConstantsScreenRatio780)
                        break
                    case 812.0: //iphone X, XS => 5.8 inch
                        self.titleLabel?.font = self.titleLabel?.font.withSize(size * ConstantsScreenRatio812)
                        break
                    case 844.0: //iphone 12, 12 pro
                        self.titleLabel?.font = self.titleLabel?.font.withSize(size * ConstantsScreenRatio844)
                        break
                    case 896.0 : //iphone XR => 6.1 inch // iphone XS MAX => 6.5 inch
                        self.titleLabel?.font = self.titleLabel?.font.withSize(size * ConstantsScreenRatio896)
                        break
                    case 926.0 : //iphone 12 pro max
                        self.titleLabel?.font = self.titleLabel?.font.withSize(size * ConstantsScreenRatio926)
                        break
                    default:
                        print("not an iPhone")
                        break
                    }
                }

            }
        }
    }
    
    @IBInspectable public var edgeInsetZero:Bool {
        get {
            return self.edgeInsetZero
        }
        set {
            if(newValue) {
                self.contentEdgeInsets = UIEdgeInsets(top: 0.1, left: 0.1, bottom: 0.1, right: 0.1)
            }
        }
    }
    
    @IBInspectable override var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            let bounds = UIScreen.main.bounds
            let height = bounds.size.height

            switch height {
            case 480.0:
                layer.cornerRadius = newValue * ConstantsScreenRatio480
                layer.masksToBounds = newValue * ConstantsScreenRatio480 > 0

                break
            case 568.0: //iphone 5, SE => 4 inch
                layer.cornerRadius = newValue * ConstantsScreenRatio568
                layer.masksToBounds = newValue * ConstantsScreenRatio568 > 0

                break
            case 667.0: //iphone 6, 6s, 7, 8 => 4.7 inch
                layer.cornerRadius = newValue * ConstantsScreenRatio667
                layer.masksToBounds = newValue * ConstantsScreenRatio667 > 0

                break
            case 736.0: //iphone 6s+, 6+, 7+, 8+ => 5.5 inch
                layer.cornerRadius = newValue * ConstantsScreenRatio736
                layer.masksToBounds = newValue * ConstantsScreenRatio736 > 0

                break
            case 780.0: //iphone 12 mini
                layer.cornerRadius = newValue * ConstantsScreenRatio780
                layer.masksToBounds = newValue * ConstantsScreenRatio780 > 0

                break
            case 812.0: //iphone X, XS => 5.8 inch
                layer.cornerRadius = newValue * ConstantsScreenRatio812
                layer.masksToBounds = newValue * ConstantsScreenRatio812 > 0

                break
            case 844.0: //iphone 12, 12 pro
                layer.cornerRadius = newValue * ConstantsScreenRatio844
                layer.masksToBounds = newValue * ConstantsScreenRatio844 > 0

                break
            case 896.0 : //iphone XR => 6.1 inch // iphone XS MAX => 6.5 inch
                layer.cornerRadius = newValue * ConstantsScreenRatio896
                layer.masksToBounds = newValue * ConstantsScreenRatio896 > 0
                
                break
            case 926.0 : //iphone 12 pro max
                layer.cornerRadius = newValue * ConstantsScreenRatio926
                layer.masksToBounds = newValue * ConstantsScreenRatio926 > 0

                break
            default:
                print("not an iPhone")
                break
            }
        }
    }
    
    @IBInspectable override var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable override var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        UIGraphicsBeginImageContext(CGSize(width: 1.0, height: 1.0))
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.setFillColor(color.cgColor)
        context.fill(CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0))
        
        let backgroundImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
         
        self.setBackgroundImage(backgroundImage, for: state)
    }
}
