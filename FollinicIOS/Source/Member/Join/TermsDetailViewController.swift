//
//  TermsDetailViewController.swift
//  FollinicIOS
//
//  Created by 한지웅-PC on 2022/01/21.
//

import UIKit

class TermsDetailViewController: BaseViewController {

    @IBOutlet var mLTitle: UILabel!
    var mTermsType:TermsType = .Terms1
    
    override func initUI() {
        switch mTermsType {
        case TermsType.Terms1:
            mLTitle.text = DefineStringKo.TermsAgreeUnitTitle1.rawValue
            break
        case TermsType.Terms2:
            mLTitle.text = DefineStringKo.TermsAgreeUnitTitle2.rawValue
            break
        case TermsType.Terms3:
            mLTitle.text = DefineStringKo.TermsAgreeUnitTitle3.rawValue
            break
        case TermsType.Terms4:
            mLTitle.text = DefineStringKo.TermsAgreeUnitTitle4.rawValue
            break
        case TermsType.Terms5:
            mLTitle.text = DefineStringKo.TermsAgreeUnitTitle5.rawValue
            break
        }
    }
    
    override func setGeneralAction(sender: UIButton) {
        if let nav = navigationController {
            nav.popViewController(animated: true)
        }
    }

}
