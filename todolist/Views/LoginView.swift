import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
           VStack {
                // Header
               HeaderView()
                    
                // Login Form
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

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
                
                // Create Account
                VStack {
                   Text("New around here?")

                    NavigationLink("Create An Account ",
                                   destination: RegisterView())
                    
                }
                .padding(.bottom, 50)
                
                Spacer()
                }
        }
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
