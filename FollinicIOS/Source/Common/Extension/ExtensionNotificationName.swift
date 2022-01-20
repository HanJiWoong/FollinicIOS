//
//  ExtensionNotificationName.swift
//  MusicQ
//
//  Created by 한지웅 on 2020/11/10.
//  Copyright © 2020 한지웅. All rights reserved.
//

import Foundation

enum FirebaseAppleAuthenticationNotification:String {
    case appleSignOutSuccess
    case appleSignOutError
    case appleSignInSuccess
    case appleSignInError
    
    var notificationName:NSNotification.Name {
        return NSNotification.Name(rawValue: self.rawValue)
    }
}

enum FirebaseFacebookAuthenticationNotification:String {
    case facebookSignOutSuccess
    case facebookSignOutError
    case facebookSignInSuccess
    case facebookSignInError
    
    var notificationName:NSNotification.Name {
        return NSNotification.Name(rawValue: self.rawValue)
    }
}

extension Notification.Name {
        
    static let registSpotifyService = Notification.Name("RegistSpotifyService")
    static let registAppleMusicService = Notification.Name("RegistAppleMusicService")
    
    static let memberJoinComplete = Notification.Name("MemberJoinComplete")
    
    static let fcmTokenRecived = Notification.Name("fcmTokenRecived")
    
    static let notiMusicAddNowProcessFinish = Notification.Name("MusicAddNowProcessFinish")
    static let notiMusicAddNowProcessSongExist = Notification.Name("MusicAddNowProcessSongExist")
    static let notiMusicNowPlayingListChange = Notification.Name("MusicNowPlayingListChange")

    static let notiMusicAddInPlaylist = Notification.Name("MusicAddInPlaylist")
    static let notiMusicAddInRoom = Notification.Name("MusicAddInRoom")
    
    static let notiMusicState = Notification.Name("MusicState")
    static let notiMusicError = Notification.Name("MusicError")
    
    static let notiSpotifyRemoteAuthBecomeActive = Notification.Name("SpotifyRemoteAuthBecomeActive")
    static let notiBecomeActiveMusicServiceRestart = Notification.Name("BecomeActiveMusicServiceRestart")
    
    // Socket Notification Name
    static let socketNotiLogin = Notification.Name("SocketNotiLogin")
    static let socketNotiSendMsg = Notification.Name("SocketNotiSendMsg")
    static let socketNotiOtherSendMsg = Notification.Name("SocketNotiOtherSendMsg")
    static let socketNotiSubscriptionRoom = Notification.Name("SocketNotiSubscriptionRoom")
    static let socketNotiLoadHistory = Notification.Name("SocketNotiLoadHistory")
    static let socketNotiRid = Notification.Name("SocketNotiRid")
    static let socketNotiBroadCreateDirectMessage = Notification.Name("socketNotiBroadCreateDirectMessage")
    static let socketNotiJoinRoom = Notification.Name("SocketNotiJoinRoom")
    
    
}
