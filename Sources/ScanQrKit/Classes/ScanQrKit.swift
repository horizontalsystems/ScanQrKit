import UIKit
import LanguageKit

class ScanQrKit {

    static var bundle: Bundle? {
        Bundle.module
    }

    static func image(named: String) -> UIImage? {
        UIImage(named: named, in: bundle, compatibleWith: nil)
    }

}

extension String {

    var localized: String {
        LanguageManager.shared.localize(string: self, bundle: ScanQrKit.bundle)
    }

    func localized(_ arguments: CVarArg...) -> String {
        LanguageManager.shared.localize(string: self, bundle: ScanQrKit.bundle, arguments: arguments)
    }

}
