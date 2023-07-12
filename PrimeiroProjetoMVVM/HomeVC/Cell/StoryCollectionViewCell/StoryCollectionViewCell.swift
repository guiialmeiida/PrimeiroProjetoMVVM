//
//  StoryCollectionViewCell.swift
//  PrimeiroProjetoMVVM
//
//  Created by Guilherme Almeida on 12/07/23.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "StoryCollectionViewCell"
    
    //private var screen: StoryCardCollectionViewCellScreen = StoryCardCollectionViewCellScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //configScreen()
        //screen.configProtocolCollectionView(delegate: self, datasource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
