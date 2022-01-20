//
//  ExtensionNSMutableData.swift
//  MusicQ
//
//  Created by 한지웅 on 2020/11/12.
//  Copyright © 2020 한지웅. All rights reserved.
//

import Foundation

extension NSMutableData {
    func appendString(_ string: String) {
        if let data = string.data(using: .utf8) {
            self.append(data)
        }
    }
}
