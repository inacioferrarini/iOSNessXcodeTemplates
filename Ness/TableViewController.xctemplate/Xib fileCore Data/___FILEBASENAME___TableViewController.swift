import UIKit
import Ness

protocol ___VARIABLE_productName:identifier___TableViewControllerDelegate: AnyObject {
    func ___VARIABLE_variableName:identifier___TableViewController(_ ___VARIABLE_variableName:identifier___TableViewController: ___VARIABLE_productName:identifier___TableViewController, didSelect ___VARIABLE_modelVariable:identifier___: ___VARIABLE_modelClass:identifier___)
    func ___VARIABLE_variableName:identifier___TableViewControllerDidSelectedOption(_ ___VARIABLE_variableName:identifier___TableViewController: ___VARIABLE_productName:identifier___TableViewController)
}

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak private(set) var ___VARIABLE_variableName:identifier___TableView: ___VARIABLE_productName:identifier___TableView!
    
    // MARK: - Properties
    
    var coreDataStack: CoreDataStack? {
        didSet {
            guard let view = ___VARIABLE_variableName:identifier___TableView else { return }
            view.coreDataStack = coreDataStack
        }
    }

    weak var delegate: ___VARIABLE_productName:identifier___TableViewControllerDelegate?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.___VARIABLE_variableName:identifier___TableView.coreDataStack = self.coreDataStack
    }

    private func setup() {
        self.title = "___VARIABLE_productName:identifier___TableViewController"
        self.___VARIABLE_variableName:identifier___TableView.delegate = self
    }

}

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___TableViewDelegate {
    
    func ___VARIABLE_variableName:identifier___TableView(_ ___VARIABLE_variableName:identifier___TableView: ___VARIABLE_productName:identifier___TableView, didSelect ___VARIABLE_modelVariable:identifier___: ___VARIABLE_modelClass:identifier___) {
        self.delegate?.___VARIABLE_variableName:identifier___TableViewController(self, didSelect: ___VARIABLE_modelVariable:identifier___)
    }
    
    func ___VARIABLE_variableName:identifier___TableViewDidSelectedOption(_ ___VARIABLE_variableName:identifier___TableView: ___VARIABLE_productName:identifier___TableView) {
        self.delegate?.___VARIABLE_variableName:identifier___TableViewControllerDidSelectedOption(self)
    }
    
}
