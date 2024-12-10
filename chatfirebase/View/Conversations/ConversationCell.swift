
import SwiftUI

struct ConversationCell: View{
    var body: some View{
        VStack {
            HStack{
                
                Image("miranha")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Piter Parker")
                        .font(.system(size:14, weight: .semibold))
                    
                    Text("This is some teste message")
                        .font(.system(size:14))
                }
                
                Spacer()
            }
            .padding(.horizontal)
            Divider()
        }
        .padding(.top)
    }
}

#Preview{
    ConversationCell()
}
