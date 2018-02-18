//
//  ViewController.swift
//  Platzzel
//
//  Created by admin on 11/02/18.
//  Copyright © 2018 Platzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var board: UIView!
    
    var tileWidth: CGFloat = 0.0
    
    var tileArray: NSMutableArray = []
    var tileCenterArray: NSMutableArray = []
    var tileEmptyCenter: CGPoint = CGPoint(x: 0, y: 0)
    
    @IBAction func btnRandom(_ sender: Any) {
        randomTiles(tileCenterArrat: self.tileCenterArray)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createSquareBoard(boardWidth: Int(self.board.frame.width), number: 4)
        randomTiles(tileCenterArrat: self.tileCenterArray)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let currentTouch: UITouch = touches.first!
        if self.tileArray.contains(currentTouch.view as Any){
            moveTileToEmptySpace(touchLabel: currentTouch.view as! CustomLabel)
        }
    }

    private func createSquareBoard(boardWidth: Int, number: Int){
        self.tileArray = []
        self.tileCenterArray = []
        
        self.tileWidth = CGFloat(boardWidth / number)
        var tileCenterX: CGFloat = self.tileWidth / 2
        var tileCenterY: CGFloat = self.tileWidth / 2
        var numberOfTile: Int = 0
        
        for _ in 0..<number{
            for _ in 0..<number{
                numberOfTile = numberOfTile + 1
                createSquareTile(
                    numberOfTile: numberOfTile,
                    side: self.tileWidth - 2,
                    centerX: tileCenterX,
                    centerY: tileCenterY
                )
                
                tileCenterX = tileCenterX + self.tileWidth
            }
            
            tileCenterX = self.tileWidth / 2
            tileCenterY = tileCenterY + self.tileWidth
        }
        
        removeLastTile(tileArray: self.tileArray)
    }
    
    private func createSquareTile(numberOfTile: Int, side: CGFloat, centerX: CGFloat, centerY: CGFloat){
        let tile = getTile(numberOfTile: numberOfTile, side: side, centerX: centerX, centerY: centerY)
        
        self.board.addSubview(tile)
        self.tileArray.add(tile)
        self.tileCenterArray.add(tile.center)
    }
    
    private func getTile(numberOfTile: Int, side: CGFloat, centerX: CGFloat, centerY: CGFloat) -> CustomLabel{
        let tile: CustomLabel = CustomLabel(frame: CGRect(x: 0, y: 0, width: side, height: side))
        tile.center = CGPoint(x: centerX, y: centerY)
        tile.originCenter = CGPoint(x: centerX, y: centerY)
        if numberOfTile <= 16{
            tile.backgroundColor = UIColor(patternImage: UIImage(named: "\(numberOfTile).jpg")!)
        }else{
            tile.backgroundColor = UIColor.gray
        }
        
        tile.textAlignment = NSTextAlignment.center
        tile.isUserInteractionEnabled = true
        
        return tile
    }
    
    private func removeLastTile(tileArray: NSMutableArray){
        let lastTile: CustomLabel = tileArray.lastObject as! CustomLabel
        lastTile.removeFromSuperview()
        tileArray.removeObject(at: tileArray.count - 1)
    }
    
    private func randomTiles(tileCenterArrat: NSMutableArray){
        let tempTileCenterArray = tileCenterArray.mutableCopy() as! NSMutableArray
        for anyTile in self.tileArray{
            let randomIndex: Int = Int(arc4random()) % tempTileCenterArray.count
            let randomCenter: CGPoint = tempTileCenterArray[randomIndex] as! CGPoint
            (anyTile as! CustomLabel).center = randomCenter
            tempTileCenterArray.removeObject(at: randomIndex)
        }
        
        self.tileEmptyCenter = tempTileCenterArray[0] as! CGPoint
    }
    
    private func moveTileToEmptySpace(touchLabel: CustomLabel){
        let xDif: CGFloat = touchLabel.center.x - self.tileEmptyCenter.x
        let yDif: CGFloat = touchLabel.center.y - self.tileEmptyCenter.y
        let distance: CGFloat = sqrt(pow(xDif, 2) + pow(yDif, 2))
        if distance == self.tileWidth{
            let tempCenter: CGPoint = touchLabel.center
            
            UIView.beginAnimations(nil, context: nil)
            UIView.setAnimationDuration(0.2)
            touchLabel.center = self.tileEmptyCenter
            UIView.commitAnimations()
            
            self.tileEmptyCenter = tempCenter
        }
    }
}

class CustomLabel: UILabel {
    var originCenter: CGPoint = CGPoint(x: 0, y: 0)
}
