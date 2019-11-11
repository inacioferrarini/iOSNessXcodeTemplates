import UIKit
import Ness

class ___FILEBASENAMEASIDENTIFIER___: UITableViewCell, Configurable {

    // MARK: - Outlets
    
    @IBOutlet weak private(set) var titleLabel: UILabel!
    
    // MARK: - Setup
    
    func setup(with value: ___VARIABLE_modelClass:identifier___) {
        // setup value
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: Internationalizable {

    var strTitle: String {
        return string("title")
    }

}
