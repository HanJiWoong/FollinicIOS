//
//  CommonInputView.swift
//  FollinicIOS
//
//  Created by 한지웅-PC on 2022/01/07.
//

import UIKit

enum CommonInputViewState {
    case normal
    case correct
    case incorrect
    case info
}

protocol CommonInputViewDelegate {
    func textFieldChange(view:CommonInputView, text:String)
    func textFieldShouldReturn(view:CommonInputView)
    func textFieldShouldClear(view:CommonInputView)
}

class CommonInputView:UIView {
    
    
    @IBOutlet var mLInfor: UILabel!
    @IBOutlet var mViewInputBg: UIView!
    @IBOutlet var mTVInput: UITextField!

    var delegate:CommonInputViewDelegate? {
        set {
            self.delegate = newValue
        }
        get {
            return self.delegate
        }
    }
    
    var mStrPlaceholder:String {
        set {
            mTVInput.placeholder = newValue
            mTVInput.layoutIfNeeded()
        }
        get {
            if let placeholder = mTVInput.placeholder {
                return placeholder
            } else {
                return ""
            }
        }
    }

    var mStrWrongText:String {
        set {
            mLInfor.text = newValue
            mLInfor.layoutIfNeeded()
        }
        get {
            if let txt = mTVInput.placeholder {
                return txt
            } else {
                return ""
            }
        }
    }

    var mViewState:CommonInputViewState {
        set {
            switch newValue {
            case .normal:
                mLInfor.isHidden = true
                mViewInputBg.borderColor = Color.MainDisableColor
                break
            case .correct:
                mLInfor.isHidden = true
                mViewInputBg.borderColor = Color.MainConcept
                break
            case .incorrect:
                mLInfor.isHidden = false
                mViewInputBg.borderColor = Color.MainError
                break
            case .info:
                mLInfor.isHidden = false
                mLInfor.textColor = Color.MainInfo
                mViewInputBg.borderColor = Color.MainConcept
                break
            }
        }
        get {
            return self.mViewState
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    // xib or storyboard load
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commonInit()
    }
    
    func commonInit() {
        let view = Bundle.main.loadNibNamed("CommonInputView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func setSecureMode() {
        mTVInput.isSecureTextEntry = true
    }



    func getText() -> String {
        if let text = mTVInput.text {
            return text
        } else {
            return ""
        }
    }
}

extension CommonInputView:UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let del = delegate, let text = textField.text {
            del.textFieldChange(view:self, text: text)
        }
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        if let del = delegate {
            del.textFieldShouldClear(view:self)
        }
        
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let del = delegate {
            del.textFieldShouldReturn(view:self)
        }
        
        return true
    }
}
