//
//  ExtensionUIView.swift
//  MusicQ
//
//  Created by 한지웅-PC on 2021/05/04.
//  Copyright © 2021 한지웅. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    var parentViewController:UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder?.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        
        return nil
    }
}

/**
    뷰에 테두리를 넣기 위한 Extension
 */
extension UIView {
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}

/**
 테두리를 둥그렇게 만들기 위한 Extension
 */
extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
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
}
