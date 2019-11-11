import UIKit
import Ness

protocol ___VARIABLE_productName:identifier___TableViewDelegate: AnyObject {
    func ___VARIABLE_variableName:identifier___TableView(_ ___VARIABLE_variableName:identifier___TableView: ___VARIABLE_productName:identifier___TableView, didSelect ___VARIABLE_modelVariable:identifier___: ___VARIABLE_modelClass:identifier___)
    func ___VARIABLE_variableName:identifier___TableViewDidSelectedOption(_ ___VARIABLE_variableName:identifier___TableView: ___VARIABLE_productName:identifier___TableView)
}

class ___FILEBASENAMEASIDENTIFIER___: UIView {

    // MARK: - Outlets
    
    @IBOutlet weak private(set) public var contentView: UIView!
    @IBOutlet weak private(set) var tableView: UITableView!

    // MARK: - Private Properties

    private var dataProvider = ArrayDataProvider<___VARIABLE_modelClass:identifier___>(section: [])
    private var tableViewDataSource: TableViewArrayDataSource<___VARIABLE_productName:identifier___TableViewCell, ___VARIABLE_modelClass:identifier___>?
    
    // MARK: - Properties

    var ___VARIABLE_modelVariable:identifier___List: [___VARIABLE_modelClass:identifier___]? {
        didSet {
            if let ___VARIABLE_modelVariable:identifier___List = ___VARIABLE_modelVariable:identifier___List {
                dataProvider.elements = [___VARIABLE_modelVariable:identifier___List]
                tableViewDataSource?.refresh()
            }
        }
    }

    weak var delegate: ___VARIABLE_productName:identifier___TableViewDelegate?
    
    var predicate: NSPredicate? {
        didSet {
            self.dataProvider.predicate = predicate
            tableViewDataSource?.refresh()
        }
    }

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
        let dataSource = TableViewArrayDataSource<___VARIABLE_productName:identifier___TableViewCell, ___VARIABLE_modelClass:identifier___>(for: tableView, with: dataProvider)
        tableView.dataSource = dataSource
        self.tableViewDataSource = dataSource
        tableView.delegate = self
        tableView.tableFooterView = UIView()
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: Internationalizable {

    var strTitle: String {
        return string("title")
    }

}

extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let ___VARIABLE_modelVariable:identifier___ = dataProvider[indexPath] else { return }
        delegate?.___VARIABLE_variableName:identifier___TableView(self, didSelect: ___VARIABLE_modelVariable:identifier___)
    }

}
