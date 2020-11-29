//
//  ViewController.swift
//  AnimationWhoAmI
//
//  Created by Marso on 2020/11/27.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var showView: UIView!
    @IBOutlet weak var pokemonLogo: UIImageView!
    let player = AVPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonLogo.image = UIImage(named:"pokemonLogo")
        pokemonLogo.contentMode = .scaleToFill

        showView.backgroundColor = UIColor(red: 55/255, green: 176/255, blue: 219/255, alpha: 1)
        showView.layer.borderColor = UIColor.white.cgColor
        showView.layer.borderWidth = 8
        view.backgroundColor = UIColor(red: 21/255, green: 35/255, blue: 70/255, alpha: 1)
        
        
        let drawPicture:DrawPicture = DrawPicture()
        let pokeball1 = drawPicture.createPokeBall(moveX: -58, moveY: 120, rotateDegree: 0, scale: 0.5)
        let pokeball2 = drawPicture.createPokeBall(moveX: 260, moveY: 120, rotateDegree: 0, scale: 0.5)
        let pokeball3 = drawPicture.createPokeBall(moveX: -58, moveY: 437, rotateDegree: 0, scale: 0.5)
        let pokeball4 = drawPicture.createPokeBall(moveX: 260, moveY: 437, rotateDegree: 0, scale: 0.5)
        view.addSubview(pokeball1)
        view.addSubview(pokeball2)
        view.addSubview(pokeball3)
        view.addSubview(pokeball4)
        
        let maskView = UIView(frame: CGRect(x: -30, y: 40, width: 350, height: 350))

        maskView.backgroundColor = .black
        let xiaozhi = drawPicture.createAnswerUIView(moveX: 0, moveY: 0, rotateDegree: 0, scale: 0.9)
        maskView.mask = xiaozhi
        showView.addSubview(maskView)
            
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let mp3FileUrl = Bundle.main.url(forResource: "WhoAmI", withExtension: "mp3")
        {
            let playerItem = AVPlayerItem(url:mp3FileUrl)
            player.replaceCurrentItem(with: playerItem)
            player.play()
        }
    }
    override func viewDidDisappear(_ animated: Bool) {
        player.pause()
    }
}

