//
//  ChatBubble.swift
//  chatfirebase
//
//  Created by paulo on 12/12/24.
//

import SwiftUI

struct ChatBubble: Shape {
    var isFromCurrentUser: Bool
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: [.topLeft, .topRight, isFromCurrentUser ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 16, height: 16)
        )
        return Path(path.cgPath)
    }
    
    
}

#Preview {
    ChatBubble(isFromCurrentUser: true)
}
