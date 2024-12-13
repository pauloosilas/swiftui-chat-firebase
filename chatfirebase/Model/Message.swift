//
//  Message.swift
//  chatfirebase
//
//  Created by paulo on 12/12/24.
//

import SwiftUI

struct Message: Identifiable {
    var id = NSUUID().uuidString
    let isFromCurrentUser: Bool
    let messageText: String
    
}
