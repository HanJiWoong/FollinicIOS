//
//  ExtensionString.swift
//  MusicQ
//
//  Created by 한지웅 on 2020/11/09.
//  Copyright © 2020 한지웅. All rights reserved.
//

import UIKit

extension String {
    func urlEncode() -> String? {
        return self.addingPercentEncoding(withAllowedCharacters: CharacterSet(charactersIn: "!*'();:@&=+$,/?%#[]{} ").inverted)
    }
    
    func urlDecode() -> String? {
        return self.removingPercentEncoding
    }
}
