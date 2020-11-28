//
//  DrawPicture.swift
//  AnimationWhoAmI
//
//  Created by Marso on 2020/11/28.
//

import Foundation
import UIKit

struct DrawPicture {
    func createAnswerUIView(moveX: CGFloat, moveY: CGFloat, rotateDegree: CGFloat, scale: CGFloat) -> UIView {
        let view = UIView()
        
        //hat Dot red
        let hatDotRedpath = UIBezierPath()
        hatDotRedpath.move(to: CGPoint(x: 214, y:0))
        hatDotRedpath.addQuadCurve(to: CGPoint(x: 214, y: 5), controlPoint: CGPoint(x: 230, y: 5))
        hatDotRedpath.addLine(to: CGPoint(x: 214, y:0))
        
        let hatDotRedLayer = CAShapeLayer()
        hatDotRedLayer.path = hatDotRedpath.cgPath
        hatDotRedLayer.fillColor = UIColor(red: 196/255, green: 75/255, blue: 74/255, alpha: 1).cgColor
        hatDotRedLayer.strokeColor = UIColor.black.cgColor
        hatDotRedLayer.lineWidth = 1
        
        //copy hat Dot red
        let copyhatDotRedLayer = CAShapeLayer()
        copyhatDotRedLayer.path = hatDotRedpath.cgPath
        var moveDistance = hatDotRedpath.bounds.maxX + hatDotRedpath.bounds.minX - hatDotRedpath.bounds.width
        copyhatDotRedLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyhatDotRedLayer.fillColor = UIColor(red: 196/255, green: 75/255, blue: 74/255, alpha: 1).cgColor
        copyhatDotRedLayer.strokeColor = UIColor.black.cgColor
        copyhatDotRedLayer.lineWidth = 1
        
        
        
        //hat white
        let hatWhitepath = UIBezierPath()
        hatWhitepath.move(to: CGPoint(x: 214, y:5))
        hatWhitepath.addQuadCurve(to: CGPoint(x: 214, y: 5), controlPoint: CGPoint(x: 230, y: 5))
        hatWhitepath.addQuadCurve(to: CGPoint(x: 316, y: 48), controlPoint: CGPoint(x: 316, y: 12))
        hatWhitepath.addLine(to: CGPoint(x: 316, y: 133))
        hatWhitepath.addLine(to: CGPoint(x: 308, y: 129))
        hatWhitepath.addQuadCurve(to: CGPoint(x: 214, y: 95), controlPoint: CGPoint(x: 260, y: 95))
        let hatWhiteLayer = CAShapeLayer()
        hatWhiteLayer.path = hatWhitepath.cgPath
        hatWhiteLayer.fillColor = UIColor(red: 231/255, green: 246/255, blue: 241/255, alpha: 1).cgColor
        hatWhiteLayer.strokeColor = UIColor.black.cgColor
        hatWhiteLayer.lineWidth = 1
        
        //copy hat white
        let copyhatWhitedLayer = CAShapeLayer()
        copyhatWhitedLayer.path = hatWhitepath.cgPath
        moveDistance = hatWhitepath.bounds.maxX + hatWhitepath.bounds.minX - hatWhitepath.bounds.width
        copyhatWhitedLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyhatWhitedLayer.fillColor = UIColor(red: 231/255, green: 246/255, blue: 241/255, alpha: 1).cgColor
        copyhatWhitedLayer.strokeColor = UIColor.black.cgColor
        copyhatWhitedLayer.lineWidth = 1

        
        
        //hat red
        let hatRedpath = UIBezierPath()
        hatRedpath.move(to: CGPoint(x: 313, y:129))
        hatRedpath.addLine(to: CGPoint(x: 292, y: 149))
        hatRedpath.addQuadCurve(to: CGPoint(x: 214, y: 130), controlPoint: CGPoint(x: 250, y: 130))
        hatRedpath.addLine(to: CGPoint(x: 214, y: 95))
        hatRedpath.addQuadCurve(to: CGPoint(x: 313, y: 129), controlPoint: CGPoint(x: 258, y: 95))

        let hatRedLayer = CAShapeLayer()
        hatRedLayer.path = hatRedpath.cgPath
        hatRedLayer.fillColor = UIColor(red: 196/255, green: 75/255, blue: 74/255, alpha: 1).cgColor
        hatRedLayer.strokeColor = UIColor.clear.cgColor
        hatRedLayer.lineWidth = 1
        
        //copy hat red
        let copyhatRedLayer = CAShapeLayer()
        copyhatRedLayer.path = hatRedpath.cgPath
        moveDistance = hatRedpath.bounds.maxX + hatRedpath.bounds.minX - hatRedpath.bounds.width
        copyhatRedLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyhatRedLayer.fillColor = UIColor(red: 196/255, green: 75/255, blue: 74/255, alpha: 1).cgColor
        copyhatRedLayer.strokeColor = UIColor.clear.cgColor
        copyhatRedLayer.lineWidth = 1
        
        
        
        
        //hat line
        let hatLinepath = UIBezierPath()
        hatLinepath.move(to: CGPoint(x: 313, y:129))
        hatLinepath.addLine(to: CGPoint(x: 292, y: 149))
        hatLinepath.addQuadCurve(to: CGPoint(x: 214, y: 130), controlPoint: CGPoint(x: 250, y: 130))
        
        let hatLineLayer = CAShapeLayer()
        hatLineLayer.path = hatLinepath.cgPath
        hatLineLayer.fillColor = UIColor.clear.cgColor
        hatLineLayer.strokeColor = UIColor.black.cgColor
        hatLineLayer.lineWidth = 1
        
        //copy hat line
        let copyhatLineLayer = CAShapeLayer()
        copyhatLineLayer.path = hatLinepath.cgPath
        moveDistance = hatLinepath.bounds.maxX + hatLinepath.bounds.minX - hatLinepath.bounds.width
        copyhatLineLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyhatLineLayer.fillColor = UIColor.clear.cgColor
        copyhatLineLayer.strokeColor = UIColor.black.cgColor
        copyhatLineLayer.lineWidth = 1
        
        

        //hat logo
        let hatLogopath = UIBezierPath()
        hatLogopath.move(to: CGPoint(x: 214, y: 15))
        hatLogopath.addQuadCurve(to: CGPoint(x: 270, y: 49), controlPoint: CGPoint(x: 270, y: 18))
        hatLogopath.addLine(to: CGPoint(x: 240, y: 48))
        hatLogopath.addQuadCurve(to: CGPoint(x: 214, y: 35), controlPoint: CGPoint(x: 230, y: 35))
        
        hatLogopath.move(to: CGPoint(x: 214, y: 40))
        hatLogopath.addQuadCurve(to: CGPoint(x: 214, y: 60), controlPoint: CGPoint(x: 260, y: 50))
        
        hatLogopath.move(to: CGPoint(x: 214, y: 66))
        hatLogopath.addQuadCurve(to: CGPoint(x: 240, y: 54), controlPoint: CGPoint(x: 230, y: 65))
        hatLogopath.addLine(to: CGPoint(x: 240, y: 54))
        hatLogopath.addLine(to: CGPoint(x: 270, y: 54))
        hatLogopath.addQuadCurve(to: CGPoint(x: 214, y: 90), controlPoint: CGPoint(x: 270, y: 90))
        
        let hatlogoLayer = CAShapeLayer()
        hatlogoLayer.path = hatLogopath.cgPath
        hatlogoLayer.fillColor = UIColor(red: 76/255, green: 142/255, blue: 197/255, alpha: 1).cgColor
        hatlogoLayer.strokeColor = UIColor.black.cgColor
        hatlogoLayer.lineWidth = 1
        
        //copy hat logo
        let copyhatLogoLayer = CAShapeLayer()
        copyhatLogoLayer.path = hatLogopath.cgPath
        moveDistance = hatLogopath.bounds.maxX + hatLogopath.bounds.minX - hatLogopath.bounds.width
        copyhatLogoLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyhatLogoLayer.fillColor = UIColor(red: 76/255, green: 142/255, blue: 197/255, alpha: 1).cgColor
        copyhatLogoLayer.strokeColor = UIColor.black.cgColor
        copyhatLogoLayer.lineWidth = 1
        
        
        
        //face
        let facepath = UIBezierPath()
        facepath.move(to: CGPoint(x: 303, y: 135))
        facepath.addLine(to: CGPoint(x: 307, y: 137))
        facepath.addLine(to: CGPoint(x: 294, y: 240))
        facepath.addLine(to: CGPoint(x: 214, y: 276))
        facepath.addLine(to: CGPoint(x: 214, y: 130))
        
        let faceLayer = CAShapeLayer()
        faceLayer.path = facepath.cgPath
        faceLayer.fillColor = UIColor(red: 234/255, green: 178/255, blue: 141/255, alpha: 1).cgColor
        faceLayer.strokeColor = UIColor.clear.cgColor
        faceLayer.lineWidth = 1
        
        //copy face
        let copyfaceLayer = CAShapeLayer()
        copyfaceLayer.path = facepath.cgPath
        moveDistance = facepath.bounds.maxX + facepath.bounds.minX - facepath.bounds.width
        copyfaceLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyfaceLayer.fillColor = UIColor(red: 234/255, green: 178/255, blue: 141/255, alpha: 1).cgColor
        copyfaceLayer.strokeColor = UIColor.clear.cgColor
        copyfaceLayer.lineWidth = 1
        
        
        
        //face line
        let faceLinepath = UIBezierPath()
        faceLinepath.move(to: CGPoint(x: 303, y: 135))
        faceLinepath.addLine(to: CGPoint(x: 307, y: 137))
        faceLinepath.addLine(to: CGPoint(x: 294, y: 240))
        faceLinepath.addLine(to: CGPoint(x: 214, y: 276))

        let faceLineLayer = CAShapeLayer()
        faceLineLayer.path = faceLinepath.cgPath
        faceLineLayer.fillColor = UIColor.clear.cgColor
        faceLineLayer.strokeColor = UIColor.black.cgColor
        faceLineLayer.lineWidth = 1
        
        //copy face line
        let copyfaceLineLayer = CAShapeLayer()
        copyfaceLineLayer.path = faceLinepath.cgPath
        moveDistance = faceLinepath.bounds.maxX + faceLinepath.bounds.minX - faceLinepath.bounds.width
        copyfaceLineLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyfaceLineLayer.fillColor = UIColor.clear.cgColor
        copyfaceLineLayer.strokeColor = UIColor.black.cgColor
        copyfaceLineLayer.lineWidth = 1
        
        
        
        //eye frame
        let eyeFramepath = UIBezierPath()
        eyeFramepath.move(to: CGPoint(x: 236, y: 154))
        eyeFramepath.addLine(to: CGPoint(x: 254, y: 148))
        
        eyeFramepath.move(to: CGPoint(x: 247, y: 161))
        eyeFramepath.addQuadCurve(to: CGPoint(x: 287, y: 177), controlPoint: CGPoint(x: 270, y: 113))
        eyeFramepath.addLine(to: CGPoint(x: 280, y: 208))
        eyeFramepath.addLine(to: CGPoint(x: 248, y: 207))
        eyeFramepath.addLine(to: CGPoint(x: 247, y: 161))
        
        let eyeFrameLayer = CAShapeLayer()
        eyeFrameLayer.path = eyeFramepath.cgPath
        eyeFrameLayer.fillColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1).cgColor
        eyeFrameLayer.strokeColor = UIColor.black.cgColor
        eyeFrameLayer.lineWidth = 2
        
        //copy eye frame
        let copyeyeFrameLayer = CAShapeLayer()
        copyeyeFrameLayer.path = eyeFramepath.cgPath
        //moveDistance = eyeFramepath.bounds.maxX + eyeFramepath.bounds.minX - eyeFramepath.bounds.width
        copyeyeFrameLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyeyeFrameLayer.fillColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1).cgColor
        copyeyeFrameLayer.strokeColor = UIColor.black.cgColor
        copyeyeFrameLayer.lineWidth = 2
        
        
        
        //eye brown
        let eyeBrownpath = UIBezierPath()
        eyeBrownpath.move(to: CGPoint(x: 259, y: 154))
        eyeBrownpath.addQuadCurve(to: CGPoint(x: 260, y: 208), controlPoint: CGPoint(x: 271, y: 175))
        eyeBrownpath.addLine(to: CGPoint(x: 256, y: 207))
        eyeBrownpath.addQuadCurve(to: CGPoint(x: 260, y: 154), controlPoint: CGPoint(x: 245, y: 172))
        
        let eyeBrownLayer = CAShapeLayer()
        eyeBrownLayer.path = eyeBrownpath.cgPath
        eyeBrownLayer.fillColor = UIColor(red: 193/255, green: 108/255, blue: 86/255, alpha: 1).cgColor
        eyeBrownLayer.strokeColor = UIColor.black.cgColor
        eyeBrownLayer.lineWidth = 1
        
        //copy eye brown
        let copyeyeBrownLayer = CAShapeLayer()
        copyeyeBrownLayer.path = eyeBrownpath.cgPath
        //moveDistance = eyeFramepath.bounds.maxX + eyeFramepath.bounds.minX - eyeFramepath.bounds.width
        copyeyeBrownLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyeyeBrownLayer.fillColor = UIColor(red: 193/255, green: 108/255, blue: 86/255, alpha: 1).cgColor
        copyeyeBrownLayer.strokeColor = UIColor.black.cgColor
        copyeyeBrownLayer.lineWidth = 2
    
        
        
        //eye white
        let eyeWhitepath = UIBezierPath()
        eyeWhitepath.move(to: CGPoint(x: 258, y: 154))
        eyeWhitepath.addQuadCurve(to: CGPoint(x: 257, y: 178), controlPoint: CGPoint(x: 270, y: 175))

        eyeWhitepath.addQuadCurve(to: CGPoint(x: 258, y: 154), controlPoint: CGPoint(x: 250, y: 167))
        
        let eyeWhiteLayer = CAShapeLayer()
        eyeWhiteLayer.path = eyeWhitepath.cgPath
        eyeWhiteLayer.fillColor = UIColor(red: 243/255, green: 244/255, blue: 255/255, alpha: 1).cgColor
        eyeWhiteLayer.strokeColor = UIColor.black.cgColor
        eyeWhiteLayer.lineWidth = 1
        
        //copy eye white
        let copyeyeWhiteLayer = CAShapeLayer()
        copyeyeWhiteLayer.path = eyeWhitepath.cgPath
        //moveDistance = eyeWhitepath.bounds.maxX + eyeWhitepath.bounds.minX - eyeWhitepath.bounds.width
        copyeyeWhiteLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyeyeWhiteLayer.fillColor = UIColor(red: 243/255, green: 244/255, blue: 255/255, alpha: 1).cgColor
        copyeyeWhiteLayer.strokeColor = UIColor.black.cgColor
        copyeyeWhiteLayer.lineWidth = 1
        

        //eye black
        let eyeBlackepath = UIBezierPath()
        eyeBlackepath.move(to: CGPoint(x: 257, y: 178))
        eyeBlackepath.addQuadCurve(to: CGPoint(x: 257, y: 194), controlPoint: CGPoint(x: 262, y: 178))
        eyeBlackepath.addQuadCurve(to: CGPoint(x: 257, y: 178), controlPoint: CGPoint(x: 255, y: 180))
        
        let eyeBlackLayer = CAShapeLayer()
        eyeBlackLayer.path = eyeBlackepath.cgPath
        eyeBlackLayer.fillColor = UIColor(red: 49/255, green: 25/255, blue: 21/255, alpha: 1).cgColor
        eyeBlackLayer.strokeColor = UIColor.black.cgColor
        eyeBlackLayer.lineWidth = 1
        
        //copy eye black
        let copyeyeBlackLayer = CAShapeLayer()
        copyeyeBlackLayer.path = eyeBlackepath.cgPath
        //moveDistance = eyeBlackepath.bounds.maxX + eyeBlackepath.bounds.minX - eyeBlackepath.bounds.width
        copyeyeBlackLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyeyeBlackLayer.fillColor = UIColor(red: 49/255, green: 25/255, blue: 21/255, alpha: 1).cgColor
        copyeyeBlackLayer.strokeColor = UIColor.black.cgColor
        copyeyeBlackLayer.lineWidth = 1
        

        
        //hair
        let hairpath = UIBezierPath()
        hairpath.move(to: CGPoint(x: 308, y: 129))
        hairpath.addLine(to: CGPoint(x: 348, y: 153))
        hairpath.addLine(to: CGPoint(x: 329, y: 154))
        hairpath.addLine(to: CGPoint(x: 371, y: 193))
        hairpath.addLine(to: CGPoint(x: 325, y: 212))
        hairpath.addLine(to: CGPoint(x: 340, y: 215))
        hairpath.addLine(to: CGPoint(x: 295, y: 237))
        
        let hairLayer = CAShapeLayer()
        hairLayer.path = hairpath.cgPath
        hairLayer.fillColor = UIColor(red: 35/255, green: 35/255, blue: 35/255, alpha: 1).cgColor
        hairLayer.strokeColor = UIColor.black.cgColor
        hairLayer.lineWidth = 1
        
        //copy hair
        let copyHairLayer = CAShapeLayer()
        copyHairLayer.path = hairpath.cgPath
        //moveDistance = hairpath.bounds.maxX + hairpath.bounds.minX - hairpath.bounds.width
        copyHairLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyHairLayer.fillColor = UIColor(red: 49/255, green: 25/255, blue: 21/255, alpha: 1).cgColor
        copyHairLayer.strokeColor = UIColor.black.cgColor
        copyHairLayer.lineWidth = 1
        
        
        
        
        //ear
        let earpath = UIBezierPath()
        earpath.move(to: CGPoint(x: 302, y: 171))
        earpath.addQuadCurve(to: CGPoint(x: 320, y: 173), controlPoint: CGPoint(x: 310, y: 160))
        earpath.addQuadCurve(to: CGPoint(x: 296, y: 223), controlPoint: CGPoint(x: 330, y: 198))
        
        let earLayer = CAShapeLayer()
        earLayer.path = earpath.cgPath
        earLayer.fillColor = UIColor(red: 234/255, green: 178/255, blue: 141/255, alpha: 1).cgColor
        earLayer.strokeColor = UIColor.black.cgColor
        earLayer.lineWidth = 1
        
        //copy ear
        let copyEarLayer = CAShapeLayer()
        copyEarLayer.path = earpath.cgPath
        //moveDistance = hairpath.bounds.maxX + hairpath.bounds.minX - hairpath.bounds.width
        copyEarLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyEarLayer.fillColor = UIColor(red: 234/255, green: 178/255, blue: 141/255, alpha: 1).cgColor
        copyEarLayer.strokeColor = UIColor.black.cgColor
        copyEarLayer.lineWidth = 1
        
        
        
        //ear line
        let earLinepath = UIBezierPath()
        earLinepath.move(to: CGPoint(x: 313, y: 186))
        earLinepath.addQuadCurve(to: CGPoint(x: 300, y: 186), controlPoint: CGPoint(x: 310, y: 165))
        earLinepath.addQuadCurve(to: CGPoint(x: 299, y: 206), controlPoint: CGPoint(x: 310, y: 200))
        
        let earLineLayer = CAShapeLayer()
        earLineLayer.path = earLinepath.cgPath
        earLineLayer.fillColor = UIColor(red: 234/255, green: 178/255, blue: 141/255, alpha: 1).cgColor
        earLineLayer.strokeColor = UIColor.black.cgColor
        earLineLayer.lineWidth = 1
        
        //copy ear line
        let copyEarLineLayer = CAShapeLayer()
        copyEarLineLayer.path = earLinepath.cgPath
        //moveDistance = earLinepath.bounds.maxX + earLinepath.bounds.minX - earLinepath.bounds.width
        copyEarLineLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        copyEarLineLayer.fillColor = UIColor(red: 234/255, green: 178/255, blue: 141/255, alpha: 1).cgColor
        copyEarLineLayer.strokeColor = UIColor.black.cgColor
        copyEarLineLayer.lineWidth = 1
        
        
        //Part of hair
        let partOfHairpath = UIBezierPath()
        partOfHairpath.move(to: CGPoint(x: 294, y: 240))
        partOfHairpath.addLine(to: CGPoint(x: 318, y: 253))
        partOfHairpath.addLine(to: CGPoint(x: 288, y: 248))
        partOfHairpath.addLine(to: CGPoint(x: 303, y: 265))
        partOfHairpath.addLine(to: CGPoint(x: 265, y: 254))
        
        partOfHairpath.move(to: CGPoint(x: 240, y: 132))
        partOfHairpath.addLine(to: CGPoint(x: 205, y: 195))
        partOfHairpath.addLine(to: CGPoint(x: 200, y: 130))
        
        partOfHairpath.move(to: CGPoint(x: 200, y: 130))
        partOfHairpath.addLine(to: CGPoint(x: 185, y: 155))
        partOfHairpath.addLine(to: CGPoint(x: 180, y: 134))
        
        let partOfHairLayer = CAShapeLayer()
        partOfHairLayer.path = partOfHairpath.cgPath
        partOfHairLayer.fillColor = UIColor(red: 35/255, green: 35/255, blue: 35/255, alpha: 1).cgColor
        partOfHairLayer.strokeColor = UIColor.black.cgColor
        partOfHairLayer.lineWidth = 1
        
        
        //cheek
        let cheekpath = UIBezierPath()
        cheekpath.move(to: CGPoint(x: 245, y: 225))
        cheekpath.addLine(to: CGPoint(x: 267, y: 216))
        cheekpath.addLine(to: CGPoint(x: 260, y: 228))
        cheekpath.addLine(to: CGPoint(x: 280, y: 220))
        let cheekLayer = CAShapeLayer()
        cheekLayer.path = cheekpath.cgPath
        cheekLayer.fillColor = UIColor.clear.cgColor
        cheekLayer.strokeColor = UIColor.black.cgColor
        cheekLayer.lineWidth = 1
        
        let cheekleftLayer = CAShapeLayer()
        cheekleftLayer.path = cheekpath.cgPath
        cheekleftLayer.setAffineTransform((CGAffineTransform(translationX: -100, y: 0)))
        cheekleftLayer.fillColor = UIColor.clear.cgColor
        cheekleftLayer.strokeColor = UIColor.black.cgColor
        cheekleftLayer.backgroundColor = UIColor.yellow.cgColor
        cheekleftLayer.lineWidth = 1
        
        
        
        view.layer.addSublayer(hatDotRedLayer)
        view.layer.addSublayer(hatWhiteLayer)
        view.layer.addSublayer(hatlogoLayer)
        view.layer.addSublayer(hairLayer)
        view.layer.addSublayer(earLayer)
        view.layer.addSublayer(earLineLayer)
        view.layer.addSublayer(faceLayer)
        view.layer.addSublayer(hatRedLayer)
        view.layer.addSublayer(eyeFrameLayer)
        view.layer.addSublayer(eyeBrownLayer)
        view.layer.addSublayer(eyeWhiteLayer)
        view.layer.addSublayer(eyeBlackLayer)
        view.layer.addSublayer(copyhatDotRedLayer)
        view.layer.addSublayer(copyhatWhitedLayer)
        view.layer.addSublayer(copyhatLogoLayer)
        view.layer.addSublayer(copyHairLayer)
        view.layer.addSublayer(copyEarLayer)
        view.layer.addSublayer(copyfaceLayer)
        view.layer.addSublayer(copyhatRedLayer)
        view.layer.addSublayer(copyeyeFrameLayer)
        view.layer.addSublayer(copyeyeBrownLayer)
        view.layer.addSublayer(copyeyeWhiteLayer)
        view.layer.addSublayer(copyeyeBlackLayer)
        view.layer.addSublayer(copyEarLineLayer)
        view.layer.addSublayer(cheekLayer)
        view.layer.addSublayer(cheekleftLayer)
        view.layer.addSublayer(hatLineLayer)
        view.layer.addSublayer(copyhatLineLayer)
        view.layer.addSublayer(faceLineLayer)
        view.layer.addSublayer(copyfaceLineLayer)
        view.layer.addSublayer(partOfHairLayer)
        
        let path = UIBezierPath()
        //mouth
        path.move(to: CGPoint(x: 214, y: 242))
        path.addLine(to: CGPoint(x: 240, y: 238))
        //nose
        path.move(to: CGPoint(x: 217, y: 212))
        path.addLine(to: CGPoint(x: 220, y: 217))
        path.addLine(to: CGPoint(x: 217, y: 220))
        
        let rightLayer = CAShapeLayer()
        rightLayer.path = path.cgPath
        rightLayer.fillColor = UIColor.clear.cgColor
        rightLayer.strokeColor = UIColor.black.cgColor
        rightLayer.lineWidth = 1
        view.layer.addSublayer(rightLayer)

        let leftLayer = CAShapeLayer()
        leftLayer.path = path.cgPath
        let moveDistance999 = path.bounds.maxX + path.bounds.minX - path.bounds.width
        leftLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance999, y: 0)))
        leftLayer.fillColor = UIColor.clear.cgColor
        leftLayer.strokeColor = UIColor.black.cgColor
        leftLayer.backgroundColor = UIColor.yellow.cgColor
        leftLayer.lineWidth = 1
        view.layer.addSublayer(leftLayer)
        let oneDegree = CGFloat.pi / 180
        view.transform = CGAffineTransform.identity.translatedBy(x: moveX, y: moveY).scaledBy(x: scale, y: scale).rotated(by: oneDegree * rotateDegree)
        
        return view
    }
    
    func createPokeBall(moveX: CGFloat, moveY: CGFloat, rotateDegree: CGFloat, scale: CGFloat) -> UIView{
        //pokeBall
        let view = UIView()
        let aDegree = CGFloat.pi / 180
        
        let pokeBallRed = UIBezierPath(arcCenter: CGPoint(x: 214, y: 500), radius: 40, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)
        
        let pokeBallRedLayer = CAShapeLayer()
        pokeBallRedLayer.path = pokeBallRed.cgPath
        pokeBallRedLayer.fillColor = UIColor(red: 196/255, green: 75/255, blue: 74/255, alpha: 1).cgColor
        pokeBallRedLayer.strokeColor = UIColor.black.cgColor
        pokeBallRedLayer.lineWidth = 3
        
        let pokeBallWhite = UIBezierPath(arcCenter: CGPoint(x: 214, y: 500), radius: 40, startAngle: aDegree * 0, endAngle: aDegree * 180, clockwise: true)
        
        let pokeBallWhiteLayer = CAShapeLayer()
        pokeBallWhiteLayer.path = pokeBallWhite.cgPath
        pokeBallWhiteLayer.fillColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        pokeBallWhiteLayer.strokeColor = UIColor.black.cgColor
        pokeBallWhiteLayer.lineWidth = 3
        
        let pokeBallButton = UIBezierPath(arcCenter: CGPoint(x: 214, y: 500), radius: 10, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)
        
        let pokeBallButtonLayer = CAShapeLayer()
        pokeBallButtonLayer.path = pokeBallButton.cgPath
        pokeBallButtonLayer.fillColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        pokeBallButtonLayer.strokeColor = UIColor.black.cgColor
        pokeBallButtonLayer.lineWidth = 3
        
        pokeBallRedLayer.addSublayer(pokeBallWhiteLayer)
        pokeBallRedLayer.addSublayer(pokeBallButtonLayer)
        view.layer.addSublayer(pokeBallRedLayer)
        
        let oneDegree = CGFloat.pi / 180
        view.transform = CGAffineTransform.identity.translatedBy(x: moveX, y: moveY).scaledBy(x: scale, y: scale).rotated(by: oneDegree * rotateDegree)
        
        return view
    }
}
