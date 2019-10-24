import UIKit
import Ness
import CoreData

protocol ___VARIABLE_productName:identifier___TableViewDelegate: AnyObject {
    func ___VARIABLE_variableName:identifier___TableView(_ ___VARIABLE_variableName:identifier___TableView: ___VARIABLE_productName:identifier___TableView, didSelect ___VARIABLE_modelVariable:identifier___: ___VARIABLE_modelClass:identifier___)
    func ___VARIABLE_variableName:identifier___TableViewDidSelectedOption(_ ___VARIABLE_variableName:identifier___TableView: ___VARIABLE_productName:identifier___TableView)
}

class ___FILEBASENAMEASIDENTIFIER___: UIView {

    // MARK: - Outlets
    
    @IBOutlet weak private(set) public var contentView: UIView!
    @IBOutlet weak private(set) var tableView: UITableView!

    // MARK: - Private Properties

    private var dataProvider: CoreDataProvider<___VARIABLE_modelClass:identifier___>?
    private var tableViewDataSource: TableViewArrayDataSource<___VARIABLE_productName:identifier___TableViewCell, ___VARIABLE_modelClass:identifier___>?
    
    // MARK: - Properties

    var coreDataStack: CoreDataStack? {
        didSet {
            guard let context = coreDataStack?.managedObjectContext else { return }
            updateCoreDataContext(context)
        }
    }

    weak var delegate: ___VARIABLE_productName:identifier___TableViewDelegate?
    
    // MARK: - Initialization
    
    ///
    /// Initializes the view with using `UIScreen.main.bounds` as frame.
    ///
    public required init() {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    ///
    /// Initializes the view with using the given `frame`.
    /// - Parameter frame: Initial view dimensions.
    ///
    override public init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    ///
    /// Initializes the view with using the given `coder`.
    /// - Parameter aDecoder: NSCoder to be used.
    ///
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        let bundle = Bundle(for: type(of: self))
        let className = String(describing: type(of: self))
        bundle.loadNibNamed(className, owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        setupView()
    }
    
    ///
    /// Override this method in order to provide aditional view setup.
    /// This method will be called after the initialization.
    ///
    open func setupView() {
        setupTableView()
    }
    
    private func setupTableView() {
        let nib = UINib(nibName: ___VARIABLE_productName:identifier___TableViewCell.simpleClassName(), bundle: Bundle(for: type(of: self)))
        tableView.register(nib, forCellReuseIdentifier: ___VARIABLE_productName:identifier___TableViewCell.simpleClassName())
        tableView.delegate = self
        tableView.tableFooterView = UIView()
    }

    func updateCoreDataContext(_ context: NSManagedObjectContext) {
        let dataProvider = CoreDataProvider<___VARIABLE_modelClass:identifier___>(sortDescriptors: [], managedObjectContext: context)
        let dataSource = TableViewArrayDataSource<___VARIABLE_productName:identifier___TableViewCell, ___VARIABLE_modelClass:identifier___>(for: tableView, with: dataProvider)
        self.tableView.dataSource = dataSource
        self.dataProvider = dataProvider
        self.tableViewDataSource = dataSource
        self.tableViewDataSource?.refresh()
    }

}

extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let ___VARIABLE_modelVariable:identifier___ = dataProvider?[indexPath] else { return }
        delegate?.___VARIABLE_variableName:identifier___TableView(self, didSelect: ___VARIABLE_modelVariable:identifier___)
    }

}
