import Foundation
import UIKit

@available(iOS 10.0, *)
class AnimatedCard: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        //Set up our card
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //Set up our card
        setup()
    }
    
    private func setup() {
        //Set the background color
        self.backgroundColor = UIColor(red: 179/255, green: 89/255, blue: 0, alpha: 1)
        self.alpha = 0
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 5.0
        self.layer.shadowOpacity = 0.5
        self.layer.cornerRadius = 4
        
        //Add other components
        
        //Animate
        
    }
    
    func animateCard(destinationY: CGFloat) {
        var animator: UIViewPropertyAnimator!
        animator = UIViewPropertyAnimator(duration:1.5, curve: .easeInOut, animations: {
            self.center.y = destinationY
            self.alpha = 1
        }
        )
        animator.startAnimation()
    }
    
    func skipAnimation(destinationY: CGFloat) {
        self.center.y = destinationY
        self.alpha = 1
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
                multiplier: 1.6,
                constant: 0
            ),
            NSLayoutConstraint(
                item: self,
                attribute: NSLayoutConstraint.Attribute.width,
                relatedBy: NSLayoutConstraint.Relation.equal,
                toItem: object,
                attribute: NSLayoutConstraint.Attribute.width,
                multiplier: 0.9,
                constant: 0
            ),
            NSLayoutConstraint(
                item: self,
                attribute: NSLayoutConstraint.Attribute.height,
                relatedBy: NSLayoutConstraint.Relation.equal,
                toItem: object,
                attribute: NSLayoutConstraint.Attribute.height,
                multiplier: 1,
                constant: 0
            )
        ];
        
        return constraints;
    }
}
