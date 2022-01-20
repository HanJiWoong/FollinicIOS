//
//  StartViewController.swift
//  FollinicIOS
//
//  Created by 한지웅-PC on 2022/01/05.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let storyboard = UIStoryboard(name: "Login", bundle: Bundle.main)
        let loginVC = storyboard.instantiateViewController(identifier: "LoginViewController")
        
        if let nav = self.navigationController {
            nav.pushViewController(loginVC, animated: true)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
