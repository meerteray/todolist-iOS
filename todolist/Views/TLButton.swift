import SwiftUI

struct TLButton: View {
    var body: some View {
        Button {
            // Attempt log in
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color.blue)
                
                Text("Log in")
                    .foregroundColor(Color.white)
                    .bold()
            }
        }

    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton()
    }
}
