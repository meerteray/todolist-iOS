import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
           VStack {
                // Header
               HeaderView(title: "To Do List",
                          subtitle: "Get things done",
                          angle: 15,
                          background: .pink)
                    
                // Login Form
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())

                    TLButton(title: "Log In",
                             background: .blue
                    ) {
                        // Attempt log in
                    }
                    .padding()
                    
                }
                .offset(y: -50)
               
                
                // Create Account
                VStack {
                   Text("New around here ?")
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
