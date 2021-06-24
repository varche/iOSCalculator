//
//  File.swift
//  iOSCalculator
//
//  Created by Amac on 24.06.2021.
//

import Foundation

class HistoryStorage {
    
    var history: [String] = []
    
    static let sharedInstance: HistoryStorage = {
        let instance = HistoryStorage()
        return instance
    }()
}
