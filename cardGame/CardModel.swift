import Foundation

class CardModel {
    
    func getCards() -> [Card]{
        
        var generatedCards = [Card]()
        var alreadyGenerated = [Int]()
        var i = 1
        while(i<9) {
            
            let randomNumber = Int.random(in: 1...13)
            
            if alreadyGenerated.contains(randomNumber) {
                continue
            }
            else {
                let cardOne = Card()
                let cardTwo = Card()
                
                cardOne.imageName = "card\(randomNumber)"
                cardTwo.imageName = "card\(randomNumber)"
                
                generatedCards += [cardOne, cardTwo]
                alreadyGenerated.append(randomNumber)
                i += 1
                print(randomNumber)
            }
        }
        
        generatedCards.shuffle()
        return generatedCards
    }
}
