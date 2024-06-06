import UIKit

class CustomCardCellCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var frontImageView: UIImageView!
    @IBOutlet weak var backImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configureCell(card: Card) {
        frontImageView.image = UIImage(named: card.imageName)
        
        if card.isFlipped {
            flipUp(speed: 0)
        }
        else {
            
        }
    }
    
    func flipUp(speed: TimeInterval = 0.3) {
        UIView.transition(from: backImageView, to: frontImageView, duration: speed, options: [.showHideTransitionViews, .transitionFlipFromBottom])
    }

}
