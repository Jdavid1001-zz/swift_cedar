import Foundation
import Nimble
import CedarRunner

public class NimbleCedarAssertionHandler: AssertionHandler {
    public func assert(assertion: Bool, message: FailureMessage, location: SourceLocation) {
        if (!assertion) {
            CDRSpecFailure.specFailureWithReason(message.stringValue, fileName: location.file, lineNumber: Int32(location.line)).raise()
        }
    }
}
