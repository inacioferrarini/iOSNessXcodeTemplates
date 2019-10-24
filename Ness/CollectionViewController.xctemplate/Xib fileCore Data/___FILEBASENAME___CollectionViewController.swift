import UIKit
import Ness

protocol ___VARIABLE_productName:identifier___CollectionViewControllerDelegate: AnyObject {
    func ___VARIABLE_variableName:identifier___CollectionViewController(_ ___VARIABLE_variableName:identifier___CollectionViewController: ___VARIABLE_productName:identifier___CollectionViewController, didSelect ___VARIABLE_modelVariable:identifier___: ___VARIABLE_modelClass:identifier___)
    func ___VARIABLE_variableName:identifier___CollectionViewControllerDidSelectedOption(_ ___VARIABLE_variableName:identifier___CollectionViewController: ___VARIABLE_productName:identifier___CollectionViewController)
}

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak private(set) var ___VARIABLE_variableName:identifier___CollectionView: ___VARIABLE_productName:identifier___CollectionView!
    
    // MARK: - Properties

    var coreDataStack: CoreDataStack? {
        didSet {
            // guard let view = ___VARIABLE_variableName:identifier___TableView else { return }
            guard let view = ___VARIABLE_variableName:identifier___CollectionView else { return }
            view.coreDataStack = coreDataStack
        }
    }

    weak var delegate: ___VARIABLE_productName:identifier___CollectionViewControllerDelegate?

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.___VARIABLE_variableName:identifier___CollectionView.coreDataStack = self.coreDataStack
    }
    
    private func setup() {
        self.title = "___VARIABLE_productName:identifier___CollectionViewController"
        self.___VARIABLE_variableName:identifier___CollectionView.delegate = self
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___CollectionViewDelegate {

    func ___VARIABLE_variableName:identifier___CollectionView(_ ___VARIABLE_variableName:identifier___CollectionView: ___VARIABLE_productName:identifier___CollectionView, didSelect ___VARIABLE_modelVariable:identifier___: ___VARIABLE_modelClass:identifier___) {
        self.delegate?.___VARIABLE_variableName:identifier___CollectionViewController(self, didSelect: ___VARIABLE_modelVariable:identifier___)
    }

    func ___VARIABLE_variableName:identifier___CollectionViewDidSelectedOption(_ ___VARIABLE_variableName:identifier___CollectionView: ___VARIABLE_productName:identifier___CollectionView) {
        self.delegate?.___VARIABLE_variableName:identifier___CollectionViewControllerDidSelectedOption(self)
    }

}
