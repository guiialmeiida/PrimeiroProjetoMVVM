//
//  HomeScreen.swift
//  PrimeiroProjetoMVVM
//
//  Created by Guilherme Almeida on 10/07/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsHorizontalScrollIndicator = false
        // TODO: REGISTER
        cv.register(StoryCardCollectionViewCell.self, forCellWithReuseIdentifier: StoryCardCollectionViewCell.identifier)
        cv.register(PostCardCollectionViewCell.self, forCellWithReuseIdentifier: PostCardCollectionViewCell.identifier)
        cv.backgroundColor = .clear
        return cv
    }()
    
    public func configProtocolCollectionView(delegate: UICollectionViewDelegate, datasource: UICollectionViewDataSource) {
        collectionView.delegate = delegate
        collectionView.dataSource = datasource
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .appBackGround
        addSubview(collectionView)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        collectionView.pin(to: self)
    }
}
