//
//  TermsViewController.swift
//  FollinicIOS
//
//  Created by 한지웅-PC on 2022/01/13.
//

import UIKit

class TermsViewController: BaseViewController {

    @IBOutlet var mBtnBack: UIButton!
    @IBOutlet var mBtnAgree: UIButton!
    @IBOutlet var mBtnConfrim: UIButton!
    @IBOutlet var mBtnTerm1: UIButton!
    @IBOutlet var mBtnTerm2: UIButton!
    @IBOutlet var mBtnTerm3: UIButton!
    @IBOutlet var mBtnTerm4: UIButton!
    @IBOutlet var mBtnTerm5: UIButton!
    
    override func initUI() {
        mBtnTerm1.tag = TermsType.Terms1.rawValue
        mBtnTerm2.tag = TermsType.Terms2.rawValue
        mBtnTerm3.tag = TermsType.Terms3.rawValue
        mBtnTerm4.tag = TermsType.Terms4.rawValue
        mBtnTerm5.tag = TermsType.Terms5.rawValue
        
        setUIButtonChooseEnable(button: mBtnConfrim, title:DefineStringKo.Confirm.rawValue , mainColor:Color.MainConcept , disableColor: Color.MainDisableColor, initEnable: true)
    }
    
    override func setGeneralAction(sender: UIButton) {
        if(sender == mBtnConfrim) {
            
        } else if(sender == mBtnBack) {
            if let nav = self.navigationController {
                nav.popViewController(animated: true)
            }
        }

    }
    
    @IBAction func onActionAgree(sender:UIButton) {
        mBtnAgree.isSelected = !mBtnAgree.isSelected
        mBtnConfrim.isEnabled = mBtnAgree.isSelected
    }

    @IBSegueAction func onActionMoveTermsDetail(_ coder: NSCoder, sender: UIButton) -> TermsDetailViewController? {
        
        let controller:TermsDetailViewController? = TermsDetailViewController(coder: coder)
        
        if let con = controller {
            switch sender.tag {
            case TermsType.Terms1.rawValue:
                con.mTermsType = .Terms1
                break
            case TermsType.Terms2.rawValue:
                con.mTermsType = .Terms2
                break
            case TermsType.Terms3.rawValue:
                con.mTermsType = .Terms3
                break
            case TermsType.Terms4.rawValue:
                con.mTermsType = .Terms4
                break
            case TermsType.Terms5.rawValue:
                con.mTermsType = .Terms5
                break
            default:
                break
            }
        }
        
        return controller
    }
    

}
