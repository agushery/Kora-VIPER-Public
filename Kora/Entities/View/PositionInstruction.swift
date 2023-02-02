//
//  PositionInstruction.swift
//  KoraDance
//
//  Created by Agus Hery on 04/11/22.
//

import Foundation
import SwiftUI

/// This struct use to store position instruction model
struct PositionInstruction: Identifiable {
    /// id for page position instruction
    let id = UUID()
    /// title page
    var title: String
    /// for tag id tab bar
    var tag: Int

    /// an example page for preview
    static var samplePage: PositionInstruction = PositionInstruction(title: "Example Title", tag: 0)
    /// real data
    static var positionInstructionData : [PositionInstruction] = [
        PositionInstruction(title: PositionInstructionTitle.firstPage, tag: 0),
        PositionInstruction(title: PositionInstructionTitle.secondPage, tag: 1)
    ]
}

/// set title page for position instruction
struct PositionInstructionTitle {
    static let firstPage = "Put your device on a flat surface and\nMake sure you can see your full body clearly on the screen"
    static let secondPage = "Control video from distance"
}

/// set image name for position instruction
struct PositionInstructionImage {
    static let calibration = "Calibration"
    static let successCalibration = "SuccessCalibration"
    static let firstImageInstructionLight = "FirstImageInstructionLight"
    static let firstImageInstructionDark = "FirstImageInstructionDark"
    static let secondImageInstructionLight = "SecondImageInstructionLight"
    static let secondImageInstructionDark = "SecondImageInstructionDark"
}
