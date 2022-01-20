//
//  JoinInputViewController.swift
//  FollinicIOS
//
//  Created by 한지웅-PC on 2022/01/21.
//

import UIKit

class JoinInputViewController: BaseViewController {
    
    @IBOutlet var mLTitle: UILabel!
    @IBOutlet var mBtnBack: UIButton!
    
    @IBOutlet var mInputViewName: CommonInputView!
    @IBOutlet var mInputViewEmail: CommonInputView!
    @IBOutlet var mInputViewPW: CommonInputView!
    @IBOutlet var mInputViewPWMatch: CommonInputView!
    @IBOutlet var mInputViewMobile: CommonInputView!
    @IBOutlet var mInputViewBirth: CommonInputView!

    @IBOutlet var mBtnJoin: UIButton!
    
    override func initUI() {
        mLTitle.text = DefineStringKo.Join.rawValue
        
        setUICommonInputView(view: mInputViewName, placeholder: DefineStringKo.JoinNamePlaceholder.rawValue, wrong: DefineStringKo.NameWrong.rawValue, isSecure: false, state: .incorrect)

        setUICommonInputView(view: mInputViewEmail, placeholder: DefineStringKo.JoinEmailPlaceholder.rawValue, wrong: DefineStringKo.EmailWrong.rawValue, isSecure: false, state: .incorrect)

        setUICommonInputView(view: mInputViewPW, placeholder: DefineStringKo.JoinPWPlaceholder.rawValue, wrong: DefineStringKo.JoinPasswordWrong.rawValue, isSecure: true, state: .incorrect)
        
        setUICommonInputView(view: mInputViewPWMatch, placeholder: DefineStringKo.JoinPWPlaceholder.rawValue, wrong: DefineStringKo.JoinPasswordMatchWrong.rawValue, isSecure: true, state: .incorrect)

        setUICommonInputView(view: mInputViewMobile, placeholder: DefineStringKo.JoinMobilePlaceholder.rawValue, wrong: DefineStringKo.MobileWrong.rawValue, isSecure: false, state: .incorrect)

        setUICommonInputView(view: mInputViewBirth, placeholder: DefineStringKo.JoinBirthPlaceholder.rawValue, wrong: DefineStringKo.BirthWrong.rawValue, isSecure: false, state: .incorrect)
        
        setUIButtonChooseEnable(button: mBtnJoin, title: DefineStringKo.Join.rawValue, mainColor:Color.MainConcept, disableColor: Color.MainDisableColor, initEnable: true)
    }
    
    override func setGeneralAction(sender: UIButton) {
        if(sender == mBtnBack) {
            if let nav = self.navigationController {
                nav.popViewController(animated: true)
            }
        }
    }
    
}
