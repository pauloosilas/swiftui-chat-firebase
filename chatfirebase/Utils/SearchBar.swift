//
//  SearchBar.swift
//  chatfirebase
//
//  Created by paulo on 10/12/24.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEdting:Bool
    
    var body: some View {
        HStack{
            
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal, 28)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)
                        
                )
            
            if isEdting {
                Button(action: {
                    isEdting = false
                    text = ""
                    UIApplication.shared.endEditing()
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.black)
                })
                .padding(.trailing, 8)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}

#Preview {
    SearchBar(text: .constant("Search..."), isEdting: .constant(false))
}
