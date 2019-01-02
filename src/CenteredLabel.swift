import Foundation
import UIKit

@available(iOS 10.0, *)
class CenteredLabel: UILabel {
    override init(frame: CGRect){
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textAlignment = .center
        self.font = UIFont.systemFont(ofSize: 35.0)
    }
    
    func setFontSize(size: CGFloat) {
        self.font = UIFont.systemFont(ofSize: size)

    }
    
    func setText(text: String) {
        self.text = text
    }
    
    func setPos(point: CGPoint) {
        self.center = point
    }
}
