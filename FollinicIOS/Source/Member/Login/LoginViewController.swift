//
//  LoginViewController.swift
//  FollinicIOS
//
//  Created by 한지웅-PC on 2022/01/05.
//

import UIKit

class LoginViewController: BaseViewController {

    @IBOutlet var mViewEmailInput: CommonInputView!
    @IBOutlet var mViewPasswordInput: CommonInputView!
    
    @IBOutlet var mBtnLogin: UIButton!
    
    @IBOutlet var mLFindPW: UILabel!
    @IBOutlet var mLDoJoin: UILabel!
    
    @IBOutlet var mBtnFindPW: UIButton!
    @IBOutlet var mBtnDoJoin: UIButton!

     override func initUI() {
        mViewEmailInput.mStrPlaceholder = DefineStringKo.Email.rawValue
        mViewEmailInput.mStrWrongText = DefineStringKo.EmailWrong.rawValue
        mViewEmailInput.mViewState = .correct
        
        mViewPasswordInput.mStrPlaceholder = DefineStringKo.Password.rawValue
        mViewPasswordInput.mStrWrongText = DefineStringKo.PasswordWrong.rawValue
        mViewPasswordInput.mViewState = .correct
        
        mBtnLogin.setTitle(DefineStringKo.Login.rawValue, for: .normal)
        mBtnLogin.setBackgroundColor(Color.MainConcept, for: .normal)
        mBtnLogin.setBackgroundColor(Color.MainDisableColor, for: .disabled)
        mBtnLogin.isEnabled = true
        
        mLFindPW.text = DefineStringKo.FindPW.rawValue
        
        mLDoJoin.text = DefineStringKo.DoJoin.rawValue
        
    }

    // 일반적인 이벤트 등록 -> 화면 이동, 팝업 띄우기 같은 UI 전환
    @IBAction override func setGeneralAction(sender:UIButton) {
        if(sender == mBtnLogin) {
            // To Do : 메인으로 이동
        } else if(sender == mBtnFindPW) {
            // To Do : 비밀번호 찾기로 이동
        } else if(sender == mBtnDoJoin) {
            // To Do : 회원가입으로 이동
        }
    }
    
    
}
