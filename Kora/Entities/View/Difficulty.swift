//
//  Difficulty.swift
//  KoraDance
//
//  Created by Ardian Pramudya Alphita on 18/10/22.
//

import Foundation

/// Difficulty is an enum that use to filter the content case on the difficulty level
enum Difficulty: String, CaseIterable, Codable {
    case beginner = "Beginner"
    case intermediate = "Intermediate"
    case advance = "Advance"
}
