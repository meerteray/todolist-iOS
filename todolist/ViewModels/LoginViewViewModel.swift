import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func login() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.isEmpty else {
            return
        }
    }
    
    func validate() {
    }
    
    
}
