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
            guard let view = ___VARIABLE_variableName:identifier___CollectionView else { return }
            view.coreDataStack = coreDataStack
        }
    }

    weak var delegate: ___VARIABLE_productName:identifier___CollectionViewControllerDelegate?
    let searchController = UISearchController(searchResultsController: nil)

    // MARK: - Search

    var isSearchBarEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }

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
        self.title = self.strTitle
        self.___VARIABLE_variableName:identifier___CollectionView.delegate = self
        self.setupSearchController()
        self.setupNavigationItem()
    }

    private func setupSearchController() {
        self.searchController.searchResultsUpdater = self
        self.searchController.obscuresBackgroundDuringPresentation = false
        self.searchController.searchBar.placeholder = "search placeholder"
        self.definesPresentationContext = true
    }

    private func setupNavigationItem() {
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.navigationItem.searchController = searchController
     }

    func applyFilters() {
        guard self.___VARIABLE_variableName:identifier___CollectionView != nil else { return }
        if let searchText = searchController.searchBar.text, searchText.count > 0 {
            // let predicate = NSPredicate(format: " ... ", searchText)
            self.___VARIABLE_variableName:identifier___CollectionView.predicate = nil
        } else {
            self.___VARIABLE_variableName:identifier___CollectionView.predicate = nil
        }
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: Internationalizable {

    var strTitle: String {
        return string("title")
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

extension ___FILEBASENAMEASIDENTIFIER___: UISearchResultsUpdating {

    func updateSearchResults(for searchController: UISearchController) {
        applyFilters()
    }

}
