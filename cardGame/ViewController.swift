//
//  ViewController.swift
//  cardGame
//
//  Created by Kazi Shakawat Hossain Ratul on 19/5/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var cardCollectionView: UICollectionView!
    
    var cardObject = CardModel()
    var cardCollection = [Card]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardCollection = cardObject.getCards()
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cardCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cardCollectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! CustomCardCellCollectionViewCell
        cell.configureCell(card: cardCollection[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = cardCollectionView.cellForItem(at: indexPath) as? CustomCardCellCollectionViewCell
        cell?.flipUp()
    }
}

