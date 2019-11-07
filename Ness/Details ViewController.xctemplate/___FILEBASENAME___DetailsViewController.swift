import UIKit
import Ness

protocol ___VARIABLE_productName:identifier___DetailsViewControllerDelegate: AnyObject {
    // func ___VARIABLE_variableName:identifier___DetailsViewController(_ ___VARIABLE_variableName:identifier___DetailsViewController: ___VARIABLE_productName:identifier___DetailsViewController, didSelect value: Any)
    // func ___VARIABLE_variableName:identifier___DetailsViewControllerDidSelectedOption(_ ___VARIABLE_variableName:identifier___DetailsViewController: ___VARIABLE_productName:identifier___DetailsViewController)
}

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak private(set) var ___VARIABLE_variableName:identifier___DetailsView: ___VARIABLE_productName:identifier___DetailsView!
    
    // MARK: - Properties
    
    weak var delegate: ___VARIABLE_productName:identifier___DetailsViewControllerDelegate?

    var ___VARIABLE_modelVariable:identifier___: ___VARIABLE_modelClass:identifier___? {
        didSet {
            guard let view = ___VARIABLE_variableName:identifier___DetailsView else { return }
            view.___VARIABLE_modelVariable:identifier___ = ___VARIABLE_modelVariable:identifier___
        }
    }

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.___VARIABLE_variableName:identifier___DetailsView.___VARIABLE_modelVariable:identifier___ = self.___VARIABLE_modelVariable:identifier___
    }
    
    private func setup() {
        self.title = self.strTitle
        self.___VARIABLE_variableName:identifier___DetailsView.delegate = self
    }

}

extension ___FILEBASENAMEASIDENTIFIER___: Internationalizable {

    var strTitle: String {
        return string("title")
    }

}

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___DetailsViewDelegate {
    
//    func ___VARIABLE_variableName:identifier___DetailsView(_ ___VARIABLE_variableName:identifier___DetailsView: ___VARIABLE_productName:identifier___DetailsView, didSelect value: Any) {
//        self.delegate?.___VARIABLE_variableName:identifier___DetailsViewController(self, didSelect: value)
//    }

//    func ___VARIABLE_variableName:identifier___DetailsViewDidSelectedOption(_ ___VARIABLE_variableName:identifier___DetailsView: ___VARIABLE_productName:identifier___DetailsView) {
//        self.delegate?.___VARIABLE_variableName:identifier___DetailsViewControllerDidSelectedOption(self)
//    }

}
