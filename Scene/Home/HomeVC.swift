//
//  HomeVC.swift
//  WeddingBells
//
//  Created by Mohanraj on 06/09/21.
//

import UIKit
import AVFoundation

class HomeVC: UIViewController {

    @IBOutlet var vwVideo: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeVC {
    @IBAction func onClkComments(_ sender: Any) {
    }
    
    @IBAction func onClkVenue(_ sender: Any) {
        let vc = VenuVC(nibName: "VenuVC", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClkGallery(_ sender: Any) {
        let vc = GalleryVC(nibName: "GalleryVC", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension HomeVC {
    private func initialSetup(){
        self.title = "Greetings"
        self.loadVideo()
    }
    
    private func loadVideo(){
        let videoURL = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4")
        let player = AVPlayer(url: videoURL!)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.vwVideo.bounds
        vwVideo.layer.addSublayer(playerLayer)
        player.play()
    }
}
