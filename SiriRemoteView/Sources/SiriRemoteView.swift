//
//  SiriRemoteView.swift
//  SiriRemoteButton
//
//  Created by David Cordero on 25.02.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit


@IBDesignable
public class SiriRemoteView: UIView {
    
    @IBInspectable
    public var lineColor: UIColor = .white {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable
    public  var hightlightColor: UIColor = .white {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable
    public var lineWidth: CGFloat = 2 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    public var highlightedButton: SiriRemoteButton? {
        didSet {
            setNeedsDisplay()
        }
    }

    // MARK: - UIView
    
    override public func draw(_ rect: CGRect) {
        drawExternalShape()
        drawTouchAreaSeparator()
        drawMicrophone()
        drawMenuButton()
        drawScreenButton()
        drawSiriButton()
        drawPlayPauseButton()
        drawVolumeButton()
        drawSelectButton()
    }
    
    // MARK: - Private
    
    private var siriRemoteAspectRatio = CGFloat(2.76)
    
    private var height: CGFloat {
        return min(bounds.height, bounds.width * siriRemoteAspectRatio)
    }
    
    private var width: CGFloat {
        return min(bounds.width, bounds.height / siriRemoteAspectRatio)
    }
    
    private var buttonSize: CGFloat {
        return width * 0.28
    }
    
    private var buttonsFirstRowPosition: CGFloat {
        return bounds.origin.y + height * 0.290
    }
    
    private var buttonsSecondsRowPosition: CGFloat {
        return bounds.origin.y + height * 0.496
    }
    
    private var buttonsFirstColumnPosition: CGFloat {
        return bounds.origin.x + width * 0.125
    }
    
    private var buttonsSecondColumnPosition: CGFloat {
        return bounds.origin.x + width - buttonSize - width * 0.125
    }
    
    private func drawExternalShape() {
        let insetRect = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: width, height: height)
        let shapePath = UIBezierPath(roundedRect: insetRect.insetBy(dx: lineWidth, dy: lineWidth),
                                     cornerRadius: width * 0.10)

        stroke(path: shapePath)
    }
    
    private func drawTouchAreaSeparator() {
        let touchAreaYPosition = height * 0.45
        let touchAreaPath = UIBezierPath()
        touchAreaPath.move(to: CGPoint(x: bounds.origin.x + lineWidth, y: touchAreaYPosition))
        touchAreaPath.addLine(to: CGPoint(x: bounds.origin.x + width - lineWidth, y: touchAreaYPosition))
        stroke(path: touchAreaPath)
    }
    
    private func drawMicrophone() {
        let microphoneWidth = width * 0.16
        let microphoneYPosition = bounds.origin.y + height * 0.04
        let microphoneXPositionStart = bounds.origin.x + width / 2 - (microphoneWidth / 2)
        let microphoneXPositionEnd = bounds.origin.x + width / 2 + (microphoneWidth / 2)
        let microphonePath = UIBezierPath()
        microphonePath.move(to: CGPoint(x: microphoneXPositionStart, y: microphoneYPosition))
        microphonePath.addLine(to: CGPoint(x: microphoneXPositionEnd, y: microphoneYPosition))
        stroke(path: microphonePath)
    }
    
    private func drawMenuButton() {
        let menuButtonPath = UIBezierPath(ovalIn: CGRect(x: buttonsFirstColumnPosition, y: buttonsFirstRowPosition, width: buttonSize, height: buttonSize))
        stroke(path: menuButtonPath)
        if highlightedButton == .menu {
            fill(path: menuButtonPath)
        }
    }
    
    private func drawScreenButton() {
        let screenButtonPath = UIBezierPath(ovalIn: CGRect(x: buttonsSecondColumnPosition, y: buttonsFirstRowPosition, width: buttonSize, height: buttonSize))
        stroke(path: screenButtonPath)
        if highlightedButton == .home {
            fill(path: screenButtonPath)
        }
    }
    
    private func drawSiriButton() {
        let siriButtonPath = UIBezierPath(ovalIn: CGRect(x: buttonsFirstColumnPosition, y: buttonsSecondsRowPosition, width: buttonSize, height: buttonSize))
        stroke(path: siriButtonPath)
        if highlightedButton == .siri {
            fill(path: siriButtonPath)
        }
    }
    
    private func drawPlayPauseButton() {
        let playPauseButtonYPosition = bounds.origin.y + height * 0.629
        let playPauseButtonPath = UIBezierPath(ovalIn: CGRect(x: buttonsFirstColumnPosition, y: playPauseButtonYPosition, width: buttonSize, height: buttonSize))
        stroke(path: playPauseButtonPath)
        if highlightedButton == .playPause {
            fill(path: playPauseButtonPath)
        }
    }
    
    private func drawVolumeButton() {
        let volumeButtonHeight = height * 0.24
        let volumeButtonCornerRadius = buttonSize * 0.5
        let volumeButtonPath = UIBezierPath(roundedRect: CGRect(x: buttonsSecondColumnPosition, y: buttonsSecondsRowPosition, width: buttonSize, height: volumeButtonHeight), cornerRadius: volumeButtonCornerRadius)
        stroke(path: volumeButtonPath)
        if highlightedButton == .volume {
            fill(path: volumeButtonPath)
        }
    }
    
    private func drawSelectButton() {
        guard highlightedButton == .select else { return }
        let selectXPosition = bounds.origin.x + width / 2 - buttonSize / 2
        let selectYPosition = bounds.origin.y + height * 0.13
        let selectPath = UIBezierPath(ovalIn: CGRect(x: selectXPosition, y: selectYPosition, width: buttonSize, height: buttonSize))
        stroke(path: selectPath)
        fill(path: selectPath)
    }
    
    
    private func stroke(path: UIBezierPath) {
        lineColor.setStroke()
        path.lineWidth = lineWidth
        path.stroke()
    }
    
    private func fill(path: UIBezierPath) {
        hightlightColor.setFill()
        path.fill()
    }
}
