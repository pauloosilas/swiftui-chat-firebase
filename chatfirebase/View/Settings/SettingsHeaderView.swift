import SwiftUI

struct SettingsHeaderView: View {
    var body: some View {
        HStack {
            Image("miranha")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.leading)
            
            VStack(alignment: .leading, spacing: 4){
                Text("Eddie Brock")
                    .font(.system(size:18))
                    .foregroundColor(.gray)
                Text("Available")
                    .foregroundColor(.gray)
                    .font(.system(size:14))
            }
            
            Spacer()
        }
        .frame(height: 80)
        .background(Color.white)
    }
}
