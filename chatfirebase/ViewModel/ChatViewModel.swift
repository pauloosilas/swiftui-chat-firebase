import Foundation
import SwiftUI

class ChatViewModel: ObservableObject {
    
    @Published var messages = [Message]()
    
    init(){
        messages = mockMessages
    }
    
    var mockMessages: [Message]{
     [
        .init(isFromCurrentUser: true, messageText: "Hey man"),
        .init(isFromCurrentUser: false, messageText: "Not much how are you"),
        .init(isFromCurrentUser: true, messageText: "Hey man"),
        .init(isFromCurrentUser: true, messageText: "Hey man"),
        .init(isFromCurrentUser: false, messageText: "Hey man"),
        .init(isFromCurrentUser: true, messageText: "Hey man"),
     ]
    }
    
    func sendMessage(_ messageText:String){
        let message = Message(isFromCurrentUser: true, messageText: messageText)
        messages.append(message)
    }
}
