//
//  PostCardViewModel.swift
//  PrimeiroProjetoMVVM
//
//  Created by Guilherme Almeida on 26/07/23.
//

import UIKit

class PostCardViewModel {
    
    private var listPosts: [Posts]
    
    init(listPosts: [Posts]) {
        self.listPosts = listPosts
    }
    
    public var numberOfItems: Int {
        listPosts.count
    }
    
    public func loadCurrentStory(indexPath: IndexPath) -> Posts {
        listPosts[indexPath.row]
    }

}
