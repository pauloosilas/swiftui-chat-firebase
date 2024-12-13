//
//  ChatView.swift
//  chatfirebase
//
//  Created by paulo on 10/12/24.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText=""
    @ObservedObject var viewModel = ChatViewModel()
    
    var body: some View {
        VStack {
            
            ScrollView{
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(viewModel.messages) { message in
                        MessageView(isFromCurrentUser: message.isFromCurrentUser, messageText: message.messageText)
                    }
                }
            }
            
            CustomInputView(text: $messageText, action:sendMessage)
        }
        .navigationTitle("Miranha")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
    }
    
    func sendMessage(){
        viewModel.sendMessage(messageText)
        messageText = ""
    }
}

#Preview {
    ChatView()
}
