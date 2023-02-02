//
//  PadCollectionViewCell.swift
//  Kora
//
//  Created by Agus Hery on 10/01/23.
//

import UIKit

class PadCollectionViewCell: UICollectionViewCell {
    
    var presenter: ChoreoListPresenterType?
    
    @IBOutlet weak var thumbnail: UIImageView!
    
    @IBOutlet weak var difficulty: UILabel!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var lock: UIImageView!
    
    static let identifier: String = "PadCollectionViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "PadCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCollectionCell(with data: Choreo) {
        
        thumbnail.image = UIImage(named: data.thumbnail)
        thumbnail.contentMode = .scaleToFill
        thumbnail.layer.cornerRadius = 14
        
        title.text = data.title
        title.textAlignment = .center
        
        difficulty.text = "   \(data.difficulty.rawValue.uppercased())   "
        difficulty.textColor = .white
        difficulty.layer.backgroundColor =
            data.difficulty == Difficulty.beginner ? UIColor(named: K.Difficulty.beginner)?.cgColor :
        data.difficulty == Difficulty.intermediate ? UIColor(named: K.Difficulty.intermediate)?.cgColor : UIColor(named: K.Difficulty.advance)?.cgColor
        difficulty.layer.cornerRadius = 8

        lock.image = data.isAvailable ? nil : UIImage(systemName: K.Image.lock)
        
        colorGradient(data.isAvailable)
    }
    
    private func colorGradient(_ available: Bool) {
        let gradient = CAGradientLayer()
        gradient.frame = CGRect(x: 0, y: 0, width: 423, height: 247)
        gradient.colors =  available ? [UIColor.clear.cgColor, UIColor.clear.cgColor, UIColor.clear.cgColor, UIColor.clear.cgColor,  UIColor.black.withAlphaComponent(0.7).cgColor, UIColor.black.cgColor] : [UIColor(named: K.Color.CollectionCell.nLayer)?
                                                .withAlphaComponent(0.5)
                                                .cgColor as Any,
                                        UIColor(named: K.Color.CollectionCell.nLayer)?
                                                .withAlphaComponent(0.5)
                                                .cgColor as Any
                                    ]
        gradient.cornerRadius = 14
        self.thumbnail.layer.addSublayer(gradient)
    }
    
    func resetStyle() {
        thumbnail.image = nil
        difficulty.text = nil
        title.text = nil
        lock.image = nil
        thumbnail.layer.sublayers = nil
    }
}
