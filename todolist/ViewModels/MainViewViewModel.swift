import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    
    init() {
        
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}

