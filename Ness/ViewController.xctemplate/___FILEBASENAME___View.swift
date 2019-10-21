import UIKit

protocol ___VARIABLE_productName:identifier___ViewDelegate: AnyObject {
    // func ___VARIABLE_variableName:identifier___View(_ ___VARIABLE_variableName:identifier___View: ___VARIABLE_productName:identifier___View, didSelect value: Any)
    // func ___VARIABLE_variableName:identifier___ViewDidSelectedOption(_ ___VARIABLE_variableName:identifier___View: ___VARIABLE_productName:identifier___View)
}

class ___FILEBASENAMEASIDENTIFIER___: UIView {

    // MARK: - Outlets
    
    @IBOutlet weak private(set) public var contentView: UIView!
    
    // MARK: - Properties

    weak var delegate: ___VARIABLE_productName:identifier___ViewDelegate?

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

}
