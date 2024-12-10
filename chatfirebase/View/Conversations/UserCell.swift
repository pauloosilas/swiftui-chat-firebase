//
//  UserCell.swift
//  chatfirebase
//
//  Created by paulo on 10/12/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        VStack {
            HStack{
                
                Image("miranha")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Miranha")
                        .font(.system(size:14, weight: .semibold))
                    
                    Text("Piter Parker")
                        .font(.system(size:14))
                }
                .foregroundColor(.black)
                
                Spacer()
            }
            .padding(.horizontal)
           
        }
        .padding(.top)
    }
    
}

#Preview {
    UserCell()
}
