import UIKit
import Ness

protocol ___VARIABLE_productName:identifier___CollectionViewDelegate: AnyObject {
    func ___VARIABLE_variableName:identifier___CollectionView(_ ___VARIABLE_variableName:identifier___CollectionView: ___VARIABLE_productName:identifier___CollectionView, didSelect ___VARIABLE_modelVariable:identifier___: ___VARIABLE_modelClass:identifier___)
    func ___VARIABLE_variableName:identifier___CollectionViewDidSelectedOption(_ ___VARIABLE_variableName:identifier___CollectionView: ___VARIABLE_productName:identifier___CollectionView)
}

class ___FILEBASENAMEASIDENTIFIER___: UIView {

    // MARK: - Outlets
    
    @IBOutlet weak private(set) public var contentView: UIView!
    @IBOutlet weak private(set) var collectionView: UICollectionView!
    
    // MARK: - Private Properties
    
    private var dataProvider = ArrayDataProvider<___VARIABLE_modelClass:identifier___>(section: [])
    private var collectionViewDataSource: CollectionViewArrayDataSource<___VARIABLE_productName:identifier___CollectionViewCell, ___VARIABLE_modelClass:identifier___>?
    
    // MARK: - Properties
    
    var ___VARIABLE_modelVariable:identifier___List: [___VARIABLE_modelClass:identifier___]? {
        didSet {
            if let ___VARIABLE_modelVariable:identifier___List = ___VARIABLE_modelVariable:identifier___List {
                dataProvider.elements = [___VARIABLE_modelVariable:identifier___List]
                collectionViewDataSource?.refresh()
            }
        }
    }
    
    weak var delegate: ___VARIABLE_productName:identifier___CollectionViewDelegate?
    
    var predicate: NSPredicate? {
        didSet {
            self.dataProvider.predicate = predicate
            collectionViewDataSource?.refresh()
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
        setupCollectionView()
    }

    private func setupCollectionView() {
        let nib = UINib(nibName: ___VARIABLE_productName:identifier___CollectionViewCell.simpleClassName(), bundle: Bundle(for: type(of: self)))
        collectionView.register(nib, forCellWithReuseIdentifier: ___VARIABLE_productName:identifier___CollectionViewCell.simpleClassName())
        let dataSource = CollectionViewArrayDataSource<___VARIABLE_productName:identifier___CollectionViewCell, ___VARIABLE_modelClass:identifier___>(for: collectionView, with: dataProvider)
        collectionView.dataSource = dataSource
        self.collectionViewDataSource = dataSource
        collectionView.delegate = self
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: Internationalizable {

    var strTitle: String {
        return string("title")
    }

}

extension ___FILEBASENAMEASIDENTIFIER___: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let ___VARIABLE_modelVariable:identifier___ = dataProvider[indexPath] else { return }
        delegate?.___VARIABLE_variableName:identifier___CollectionView(self, didSelect: ___VARIABLE_modelVariable:identifier___)
    }

}
