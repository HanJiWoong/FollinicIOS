//
//  ExtensionViewController.swift
//  MusicQ
//
//  Created by 한지웅-PC on 2021/01/21.
//  Copyright © 2021 한지웅. All rights reserved.
//

import UIKit
import AuthenticationServices

extension UIViewController:ASWebAuthenticationPresentationContextProviding {
    public func presentationAnchor(for session: ASWebAuthenticationSession) -> ASPresentationAnchor {
        return view.window!
    }
}
