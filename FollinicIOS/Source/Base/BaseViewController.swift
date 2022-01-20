//
//  BaseViewController.swift
//  FollinicIOS
//
//  Created by 한지웅-PC on 2022/01/10.
//

import UIKit

class BaseViewController: UIViewController {

    private(set) var didSetupConstraints = false
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.setNeedsUpdateConstraints()
        
        self.initUI()
    }
    
    override func updateViewConstraints() {
        if !self.didSetupConstraints {
            self.setupConstraints()
            self.didSetupConstraints = true
        }
        super.updateViewConstraints()
    }
    
    func setupConstraints() {
        
    }
    
    func initUI() {
        print("BaseViewController initUI")
    }
    
    @IBAction public func setGeneralAction(sender:UIButton) {
        
    }
    
    /**
      UI 기본 함수( UI 디자인 관련 기본 메서드 )
     */
     func setUIButtonChooseEnable(button:UIButton, title:String, mainColor:UIColor, disableColor:UIColor, initEnable:Bool) {
        button.setTitle(title, for: .normal)
        button.setBackgroundColor(mainColor, for: .normal)
        button.setBackgroundColor(disableColor, for: .disabled)
        button.isEnabled = initEnable
    }
    
    func setUICommonInputView(view:CommonInputView, placeholder:String, wrong:String, isSecure:Bool, state:CommonInputViewState) {
     
        view.mStrPlaceholder = placeholder
        view.mStrWrongText = wrong
        view.mViewState = state
        
        if isSecure { view.setSecureMode() }
        
    }
}
