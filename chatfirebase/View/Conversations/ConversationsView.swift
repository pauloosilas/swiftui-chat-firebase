import SwiftUI

struct ConversationsView: View {
    
    @State private var showNewMessageView = false
    @State private var showChatView = false
    
    var body: some View{
        ZStack(alignment: .bottomTrailing){
            
            NavigationLink(
                destination: ChatView(),
                isActive: $showChatView,
                label: {}
            )
            
            ScrollView{
                VStack(alignment: .leading) {
                   
                    VStack{
                        ForEach((0...10), id: \.self){ _ in
                            NavigationLink(destination: ChatView(),
                            label:{
                                ConversationCell()
                            })
                        }
                    }
                }
            }
            
            Button(action:{
                showNewMessageView.toggle()
            },label:{
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height:24)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $showNewMessageView, content: {
                NewMessageView(showChatView: $showChatView)
            })
        }
    }
}

#Preview{
    ConversationsView()
}
