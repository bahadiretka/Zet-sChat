//
//  Constants.swift
//  Zet'sChat
//
//  Created by Bahadır Kılınç on 21.05.2022.
//

import Foundation

struct K {
    static let appName = "Zet'sChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    static let errorViewController = "ErrorViewController"
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
        static let lightPink = "LightPink"
        static let lightYellow = "LightYellow"
        static let brandOrange = "BrandOrange"
        static let brandPurple = "BrandPurple"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
