//
//  AudioPlayer.swift
//  Restart
//
//  Created by Kleber Fernando on 01/03/22.
//

import Foundation
import AVFoundation

var audioPLayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPLayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPLayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
