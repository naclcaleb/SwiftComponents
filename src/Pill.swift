import UIKit

class Pill: UIView {

    override func layoutSubviews() {
        self.layer.cornerRadius = self.bounds.height/2
    }
    
}
