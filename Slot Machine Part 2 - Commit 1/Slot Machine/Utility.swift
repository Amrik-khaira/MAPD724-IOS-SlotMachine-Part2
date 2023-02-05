//  Utility.swift
//  Author's name : Amrik Singh
//  StudentID : 301296257
//
//  Slot Machine Part 2
//
//  Created by Amrik on 04/02/23.
//
// Version: 2.0


import Foundation
import AVFoundation

class Utility {
    static let shared = Utility()
    var player : AVAudioPlayer?
    
    // play sound
    func play(sound name : String){
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else{
            return
        }
        player = try? AVAudioPlayer(contentsOf: url)
        player?.play()
    }
}
