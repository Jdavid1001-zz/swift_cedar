import UIKit
import CedarRunner
import Nimble

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        NimbleAssertionHandler = NimbleCedarAssertionHandler()
        exit(CDRRunSpecs())
    }
}

