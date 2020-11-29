//
//  AnswerViewController.swift
//  AnimationWhoAmI
//
//  Created by Marso on 2020/11/27.
//

import UIKit
import AVFoundation

class AnswerViewController: UIViewController {
    @IBOutlet weak var pokemonLogo: UIImageView!
    @IBOutlet weak var showView: UIView!
    @IBOutlet weak var whoAmILabel: UILabel!
    let player = AVPlayer()
    let drawPicture:DrawPicture = DrawPicture()
    var maskView = UIView(frame: CGRect(x: 0, y: 0, width: 350, height: 350))
    
    var timer: Timer?
    var timer2: Timer?
    var timer3: Timer?
    var timer4: Timer?
    var timer5: Timer?
    var timer6: Timer?
    var timer7: Timer?
    var timer8: Timer?
    
    @objc func animator(){
        let animator = UIViewPropertyAnimator(duration: 2.0, curve: .linear){
            self.maskView.frame = CGRect(x: -100, y: 750, width: 350, height: 350)
        }
        animator.startAnimation()
    }
    
    @objc func animator2(){
        self.maskView.alpha = 0.6
        let animator2 = UIViewPropertyAnimator(duration: 2.0, curve: .linear){
            
            self.maskView.frame = CGRect(x: 200, y: 200, width: 350, height: 350)
        }
        animator2.startAnimation()
    }
    
    @objc func animator3(){
        self.maskView.alpha = 0.7
        let animator3 = UIViewPropertyAnimator(duration: 2.0, curve: .linear){
            self.maskView.frame = CGRect(x: -160, y: 200, width: 350, height: 350)
        }
        animator3.startAnimation()
        
    }
    @objc func animator4(){
        self.maskView.alpha = 0.8
        let animator4 = UIViewPropertyAnimator(duration: 2.0, curve: .linear){
            self.maskView.frame = CGRect(x: 200, y: 750, width: 350, height: 350)
        }
        animator4.startAnimation()
        
    }
    @objc func animator5(){
        self.maskView.alpha = 0.9
        let animator5 = UIViewPropertyAnimator(duration: 2.0, curve: .linear){
            self.maskView.frame = CGRect(x: 15, y: -80, width: 350, height: 350)
        }
        animator5.startAnimation()
    }
    
    @objc func animator6(){
        self.maskView.alpha = 1
        let animator6 = UIViewPropertyAnimator(duration: 2.5, curve: .linear){
            self.maskView.frame = CGRect(x: 15, y: 410, width: 350, height: 350)
        }
        animator6.startAnimation()
    }

    @objc func animator7(){
        //rotation animation
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotationAnimation.fromValue = 0
        rotationAnimation.toValue = Double.pi*2
        rotationAnimation.duration = 0.2
        rotationAnimation.repeatCount = 3
        maskView.layer.add(rotationAnimation, forKey: "transform.rotation")
    }
    
    @objc func animator8(){
        //rotation animation
        maskView.mask = nil
        maskView.removeFromSuperview()
        let xiaozhi = drawPicture.createAnswerUIView(moveX: -30, moveY: 37, rotateDegree: 0, scale: 0.9)
        showView.addSubview(xiaozhi)
        whoAmILabel.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        whoAmILabel.isHidden = true
        pokemonLogo.image = UIImage(named:"pokemonLogo")
        pokemonLogo.contentMode = .scaleToFill

        showView.backgroundColor = UIColor(red: 55/255, green: 176/255, blue: 219/255, alpha: 1)
        showView.layer.borderColor = UIColor.white.cgColor
        showView.layer.borderWidth = 8
        view.backgroundColor = UIColor(red: 21/255, green: 35/255, blue: 70/255, alpha: 1)
        
        
        let pokeball1 = drawPicture.createPokeBall(moveX: -58, moveY: 120, rotateDegree: 0, scale: 0.5)
        let pokeball2 = drawPicture.createPokeBall(moveX: 260, moveY: 120, rotateDegree: 0, scale: 0.5)
        let pokeball3 = drawPicture.createPokeBall(moveX: -58, moveY: 437, rotateDegree: 0, scale: 0.5)
        let pokeball4 = drawPicture.createPokeBall(moveX: 260, moveY: 437, rotateDegree: 0, scale: 0.5)
        view.addSubview(pokeball1)
        view.addSubview(pokeball2)
        view.addSubview(pokeball3)
        view.addSubview(pokeball4)
        
        let xiaozhi = drawPicture.createAnswerUIView(moveX: 0, moveY: 0, rotateDegree: 0, scale: 0.9)
        maskView.mask = xiaozhi
        maskView.backgroundColor = .black
        maskView.alpha = 0.5
        view.addSubview(maskView)
        
        timer = Timer.scheduledTimer(timeInterval: 0.0, target: self, selector: #selector(animator), userInfo: nil, repeats: false)
        timer2 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(animator2), userInfo: nil, repeats: false)
        timer3 = Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector(animator3), userInfo: nil, repeats: false)
        timer4 = Timer.scheduledTimer(timeInterval: 6.0, target: self, selector: #selector(animator4), userInfo: nil, repeats: false)
        timer5 = Timer.scheduledTimer(timeInterval: 8.0, target: self, selector: #selector(animator5), userInfo: nil, repeats: false)
        timer6 = Timer.scheduledTimer(timeInterval: 10.0, target: self, selector: #selector(animator6), userInfo: nil, repeats: false)
        timer7 = Timer.scheduledTimer(timeInterval: 12.0, target: self, selector: #selector(animator7), userInfo: nil, repeats: false)
        timer8 = Timer.scheduledTimer(timeInterval: 14.0, target: self, selector: #selector(animator8), userInfo: nil, repeats: false)


        let mp3FileUrl = Bundle.main.url(forResource: "Answer", withExtension: "mp3")!
        let playerItem = AVPlayerItem(url:mp3FileUrl)
        player.replaceCurrentItem(with: playerItem)
        player.play()

        
    }
        
    override func viewDidDisappear(_ animated: Bool) {
         if self.timer != nil {
              self.timer?.invalidate()
         }
        if self.timer2 != nil {
             self.timer2?.invalidate()
        }
        if self.timer3 != nil {
             self.timer3?.invalidate()
        }
        if self.timer4 != nil {
             self.timer4?.invalidate()
        }
        if self.timer5 != nil {
             self.timer5?.invalidate()
        }
        if self.timer6 != nil {
             self.timer6?.invalidate()
        }
        if self.timer7 != nil {
             self.timer7?.invalidate()
        }
        if self.timer8 != nil {
             self.timer8?.invalidate()
        }
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
