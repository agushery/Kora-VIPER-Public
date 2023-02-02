//
//  ContentFilter.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 18/10/22.
//

import Foundation

/// ContentFilter use to define the predicate for CloudKit
/// This can be use when you want to add filter in the main screen
enum ContentFilter {
    case choreo
    case choreoDetail
    case music
    case choreographer
    case difficulty
    case user
    case all
}
