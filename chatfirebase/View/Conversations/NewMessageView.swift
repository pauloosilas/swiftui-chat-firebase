//
//  NewMessageView.swift
//  chatfirebase
//
//  Created by paulo on 10/12/24.
//

import SwiftUI

struct NewMessageView: View {
    @Binding var showChatView: Bool
    @Environment(\.presentationMode) var mode
    @State private var searchText = ""
    @State private var isEditing = false
    
    var body: some View {
        ScrollView {
            
            SearchBar(text:$searchText, isEdting: $isEditing)
                .onTapGesture {
                    isEditing.toggle()
                }
                .padding()
            
            VStack(alignment: .leading){
                ForEach((0...10), id: \.self){ _ in
                    Button(action: {
                        showChatView.toggle()
                        mode.wrappedValue.dismiss()
                    } , label:{
                        UserCell()
                    })
                }
            }
        }
    }
}

#Preview {
    NewMessageView(showChatView: .constant(true))
}
