//
//  ListOfCommand.swift
//  KoraDance
//
//  Created by Agus Hery on 10/11/22.
//

import Foundation

struct ListOfCommand: Identifiable {
    // ID
    let id = UUID()
    /// use to save title of command or that command use for user
    let command: String
    /// use to show description of what command can do
    let description: String
    /// use to store image
    let image: [String]
    
    // TODO: - Change this
//    static let listData : [ListOfCommand] = [
//        ListOfCommand(command: "Play", description: "Play Video", image: [VideoButtonImage.play]),
//        ListOfCommand(command: "Pause", description: "Pause Video", image: [VideoButtonImage.pause]),
//        ListOfCommand(command: "Backward", description: "Go Backward 5s", image: [VideoButtonImage.backward]),
//        ListOfCommand(command: "Forward", description: "Go Forward 5s", image: [VideoButtonImage.forward]),
//        ListOfCommand(command: "Up", description: "Volume Up", image: [VideoButtonImage.volume, VideoButtonImage.up]),
//        ListOfCommand(command: "Down", description: "Volume Down", image: [VideoButtonImage.volume, VideoButtonImage.down]),
//        ListOfCommand(command: "Fast", description: "Faster Speed", image: [VideoButtonImage.speed, VideoButtonImage.up]),
//        ListOfCommand(command: "Slow", description: "Slower Speed", image: [VideoButtonImage.speed, VideoButtonImage.down]),
//        ListOfCommand(command: "Repeat", description: "Repeat Video", image: [VideoButtonImage.repeatVideo, VideoButtonImage.down]),
//        ListOfCommand(command: "Back", description: "Back to Choreo Detail", image: ["Back"]),
//        ListOfCommand(command: "Next", description: "Go to Next Part", image: ["Next"]),
//        ListOfCommand(command: "Practice", description: "Practice from Part 1", image: ["Practice"]),
//        ListOfCommand(command: "Test", description: "Test Me Out", image: ["TestMeOut"]),
//        ListOfCommand(command: "Full", description: "Full Choreography", image: ["FullChoreography"]),
//        ListOfCommand(command: "1 / 2", description: "Choose Part 1, etc", image: ["Part"]),
//        ListOfCommand(command: "Default", description: "Volume Back to 50 and Speed Back to Normal", image: ["Normal"])
//    ]
}
