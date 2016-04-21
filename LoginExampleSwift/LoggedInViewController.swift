

import Foundation
import Firebase

class LoggedInViewController: UIViewController {


@IBAction func logout(sender: AnyObject) {
    
    // unauth() is the logout method for the current user.
    
    DataService.dataService.CURRENT_USER_REF.unauth()
    
    // Remove the user's uid from storage.
    
    NSUserDefaults.standardUserDefaults().setValue(nil, forKey: "uid")
    
    // Head back to Login!
    
    let loginViewController = self.storyboard!.instantiateViewControllerWithIdentifier("Login")
    UIApplication.sharedApplication().keyWindow?.rootViewController = loginViewController
}

}