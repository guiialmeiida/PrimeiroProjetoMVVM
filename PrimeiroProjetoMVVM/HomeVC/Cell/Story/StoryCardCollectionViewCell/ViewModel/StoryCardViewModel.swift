//
//  StoryCardViewModel.swift
//  PrimeiroProjetoMVVM
//
//  Created by Guilherme Almeida on 11/07/23.
//

import UIKit

class StoryCardViewModel {
    
    private var listStory: [Stories]
    
    init(listStory: [Stories]) {
        self.listStory = listStory
    }
    
    public var numberOfItems: Int {
        listStory.count
    }
    
    public func loadCurrentStory(indexPath: IndexPath) -> Stories {
        listStory[indexPath.row]
    }
}
