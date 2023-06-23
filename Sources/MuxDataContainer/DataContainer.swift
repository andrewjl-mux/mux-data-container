//
//  DataContainer.swift
//

import Foundation
import MUXSDKStats

import AVKit

public final class DataContainer {

    public static func setupPlayerWithMuxDataMonitoring() {


        let viewController = AVPlayerViewController()

        let url = URL(string: "https://stream.mux.com/qxb01i6T202018GFS02vp9RIe01icTcDCjVzQpmaB00CUisJ4.m3u8")!
        viewController.player = AVPlayer(url: url)
        let playName = "iOS AVPlayer"
        let playerData = MUXSDKCustomerPlayerData(environmentKey: "u58ve3oimdhvh04sio11rcr3l")
        let videoData = MUXSDKCustomerVideoData()
        MUXSDKStats.monitorAVPlayerViewController(viewController, withPlayerName: playName, playerData: playerData!, videoData: videoData);

    }

}
