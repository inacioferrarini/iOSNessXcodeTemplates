import UIKit
import Ness

protocol ___VARIABLE_productName:identifier___DetailsViewDelegate: AnyObject {
    // func ___VARIABLE_variableName:identifier___DetailsView(_ simpleView: ___VARIABLE_productName:identifier___DetailsView, didSelect value: Any)
    // func ___VARIABLE_variableName:identifier___DetailsViewDidSelectedOption(_ simpleView: ___VARIABLE_productName:identifier___DetailsView)
}

class ___FILEBASENAMEASIDENTIFIER___: UIView {

    // MARK: - Outlets
    
    @IBOutlet weak private(set) public var contentView: UIView!
    @IBOutlet weak private(set) var descriptionLabel: UILabel!
    
    // MARK: - Properties
    
    weak var delegate: ___VARIABLE_productName:identifier___DetailsViewDelegate?

    var ___VARIABLE_modelVariable:identifier___: ___VARIABLE_modelClass:identifier___? {
        didSet {
            setup(with: ___VARIABLE_modelVariable:identifier___)
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
    open func setupView() {}

    private func setup(with ___VARIABLE_modelVariable:identifier___: ___VARIABLE_modelClass:identifier___?) {
        guard let ___VARIABLE_modelVariable:identifier___ = ___VARIABLE_modelVariable:identifier___ else { return }
        // descriptionLabel.text = ""
    }
   
}

extension ___FILEBASENAMEASIDENTIFIER___: Internationalizable {

    var strTitle: String {
        return string("title")
    }

}
