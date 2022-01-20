//
//  FindPWViewController.swift
//  FollinicIOS
//
//  Created by 한지웅-PC on 2022/01/10.
//

import UIKit

class FindPWViewController: BaseViewController {

    @IBOutlet var mLTitle: UILabel!
    @IBOutlet var mLSubTitle: UILabel!
    
    @IBOutlet var mBtnBack: UIButton!
    @IBOutlet var mBtnConfirm: UIButton!
    
    @IBOutlet var mViewNameInput: CommonInputView!
    @IBOutlet var mViewMobileInput: CommonInputView!
    @IBOutlet var mViewEmailInput: CommonInputView!
    
    override func initUI() {
        mLTitle.text = DefineStringKo.FindPW.rawValue
        mLSubTitle.text = DefineStringKo.FindPW.rawValue
     
        setUICommonInputView(view: mViewNameInput, placeholder: DefineStringKo.FindPWNamePlaceholder.rawValue, wrong: DefineStringKo.NameWrong.rawValue, isSecure: false, state: .incorrect)

        setUICommonInputView(view: mViewMobileInput, placeholder: DefineStringKo.FindPWMobilePlaceholder.rawValue, wrong: DefineStringKo.MobileWrong.rawValue, isSecure: false, state: .incorrect)

        setUICommonInputView(view: mViewEmailInput, placeholder: DefineStringKo.FindPWEmailPlaceholder.rawValue, wrong: DefineStringKo.EmailWrong.rawValue, isSecure: false, state: .incorrect)
        
        setUIButtonChooseEnable(button: mBtnConfirm, title: DefineStringKo.Confirm.rawValue, mainColor:Color.MainConcept, disableColor: Color.MainDisableColor, initEnable: true)
        
    }

    override func setGeneralAction(sender: UIButton) {
        if(sender == mBtnBack) {
            if let nav = self.navigationController {
                nav.popViewController(animated: true)
            }
        } else if(sender == mBtnConfirm) {
            if let nav = self.navigationController {
                nav.popViewController(animated: true)
            }
        }
        
    }
}
