import UIKit

protocol ___VARIABLE_productName:identifier___ViewControllerDelegate: AnyObject {
    // func ___VARIABLE_variableName:identifier___ViewController(_ ___VARIABLE_variableName:identifier___ViewController: ___VARIABLE_productName:identifier___ViewController, didSelect value: Any)
    // func ___VARIABLE_variableName:identifier___ViewDidSelectedOption(_ ___VARIABLE_variableName:identifier___ViewController: ___VARIABLE_productName:identifier___ViewController)
}

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak private(set) var ___VARIABLE_variableName:identifier___View: ___VARIABLE_productName:identifier___View!
    
    // MARK: - Properties
    
    weak var delegate: ___VARIABLE_productName:identifier___ViewControllerDelegate?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }

    private func setup() {
        self.title = "___VARIABLE_productName:identifier___ViewController" 
        self.___VARIABLE_variableName:identifier___View.delegate = self
    }

}

extension ___VARIABLE_productName:identifier___ViewController: ___VARIABLE_productName:identifier___ViewDelegate {

//    func ___VARIABLE_variableName:identifier___View(_ ___VARIABLE_variableName:identifier___View: ___VARIABLE_productName:identifier___View, didSelect value: Any) {
//        self.delegate?.___VARIABLE_variableName:identifier___ViewController(self, didSelect: value)
//    }
//    
//    func ___VARIABLE_variableName:identifier___ViewDidSelectedOption(_ ___VARIABLE_variableName:identifier___View: ___VARIABLE_productName:identifier___View) {
//        self.delegate?.___VARIABLE_productName:identifier___ViewDidSelectedOption(self)
//    }

}
