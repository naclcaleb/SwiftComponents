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
    
    func generateConstraints(object: UIView) -> [NSLayoutConstraint]{
        let constraints = [
            NSLayoutConstraint(
                item: self,
                attribute: NSLayoutConstraint.Attribute.centerX,
                relatedBy: NSLayoutConstraint.Relation.equal,
                toItem: object,
                attribute: NSLayoutConstraint.Attribute.centerX,
                multiplier: 1,
                constant: 0
            ),
            NSLayoutConstraint(
                item: self,
                attribute: NSLayoutConstraint.Attribute.centerY,
                relatedBy: NSLayoutConstraint.Relation.lessThanOrEqual,
                toItem: object,
                attribute: NSLayoutConstraint.Attribute.centerY,
                multiplier: 0.2,
                constant: 0
            ),
            NSLayoutConstraint(
                item: self,
                attribute: NSLayoutConstraint.Attribute.width,
                relatedBy: NSLayoutConstraint.Relation.equal,
                toItem: object,
                attribute: NSLayoutConstraint.Attribute.width,
                multiplier: 1,
                constant: 0
            ),
            NSLayoutConstraint(
                item: self,
                attribute: NSLayoutConstraint.Attribute.height,
                relatedBy: NSLayoutConstraint.Relation.equal,
                toItem: object,
                attribute: NSLayoutConstraint.Attribute.height,
                multiplier: 0.1,
                constant: 0
            )
        ];
        
        return constraints;
    }
}
