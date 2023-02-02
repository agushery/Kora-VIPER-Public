//
//  PhoneChoreoDetailViewController.swift
//  Kora
//
//  Created by Agus Hery on 07/01/23.
//

import UIKit
import AVFoundation

class PhoneChoreoDetailViewController: UIViewController, ChoreoDetailViewControllerType {
    
    var presenter: ChoreoDetailPresenterType?
    
    var data: Choreo?
    
    var videoPlayer: AVPlayer?
    
    var videoPlayerLayer: AVPlayerLayer?
    
    var playerLooper: AVPlayerLooper?
    
    var isMute: Bool = false
    
    
    @IBOutlet weak var thumbnail: UIImageView!
    
    @IBOutlet weak var volumeBtn: UIButton!
    
    @IBOutlet weak var titleChoreo: UILabel!
    
    @IBOutlet weak var difficultyChoreo: UILabel!
    
    @IBOutlet weak var durationChoreo: UILabel!
    
    @IBOutlet weak var choreographer: UILabel!
    
    @IBOutlet weak var songChoreo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.backgroundColor =  .clear
        self.navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        getData()
        if let data = data {
            presenter?.getODRAssets(fileName: [data.preview])
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        guard let presenter = self.presenter else { return }
        if let odr = presenter.isODRSuccess, odr {
            if let preview = presenter.videoLoop(fileName: data?.preview) {
                preview.frame = CGRect(x: 0, y: 0, width: UI_WIDTH, height: 350)
                preview.videoGravity = .resizeAspectFill
                thumbnail.layer.addSublayer(preview)
            }
            presenter.videoPlayer?.play()
        }
        setupChoreoDetail()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        presenter?.videoPlayer?.pause()
    }
    
    func getData() {
        data = presenter?.choreoData
    }
    
    func setupChoreoDetail() {
        if let data = data {
            titleChoreo.text = data.title
            difficultyChoreo.text = "  \(data.difficulty.rawValue.uppercased())  "
            difficultyChoreo.layer.backgroundColor =
            data.difficulty == Difficulty.beginner ? UIColor(named: K.Difficulty.beginner)?.cgColor :
            data.difficulty == Difficulty.intermediate ? UIColor(named: K.Difficulty.intermediate)?.cgColor : UIColor(named: K.Difficulty.advance)?.cgColor
            difficultyChoreo.layer.cornerRadius = 8
            durationChoreo.text = "\(data.duration) seconds"
            choreographer.text = "Choreographer: \(data.choreographer)"
            songChoreo.text = "Song Title & Artist: \(data.music) by"
        }
        
    }
    
    @IBAction func volumePressed(_ sender: UIButton) {
        print("CLick")
        isMute.toggle()
        volumeBtn.setImage(UIImage(systemName: isMute ? "volume.slash.fill" : "volume.3.fill"), for: .normal)
        presenter?.muteVideo(isMute)
    }
}
