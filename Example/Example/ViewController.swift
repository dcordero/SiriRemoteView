//
//  ViewController.swift
//  Example
//
//  Created by David Cordero on 27.02.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit
import SiriRemoteView


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let siriRemote1 = SiriRemoteView(frame: CGRect(x: 100, y: 100, width: 100, height: 270))
        siriRemote1.backgroundColor = .clear
        siriRemote1.lineColor = .black
        siriRemote1.hightlightColor = .black
        siriRemote1.highlightedButton = .menu
        view.addSubview(siriRemote1)

        let siriRemote2 = SiriRemoteView(frame: CGRect(x: 300, y: 100, width: 100, height: 270))
        siriRemote2.backgroundColor = .clear
        siriRemote2.lineColor = .black
        siriRemote2.hightlightColor = .black
        siriRemote2.highlightedButton = .volume
        view.addSubview(siriRemote2)

        let siriRemote3 = SiriRemoteView(frame: CGRect(x: 500, y: 100, width: 100, height: 270))
        siriRemote3.backgroundColor = .clear
        siriRemote3.lineColor = .black
        siriRemote3.hightlightColor = .black
        siriRemote3.highlightedButton = .playPause
        view.addSubview(siriRemote3)

        let siriRemote4 = SiriRemoteView(frame: CGRect(x: 100, y: 400, width: 100, height: 270))
        siriRemote4.backgroundColor = .clear
        siriRemote4.lineColor = .black
        siriRemote4.hightlightColor = .black
        siriRemote4.highlightedButton = .home
        view.addSubview(siriRemote4)

        let siriRemote5 = SiriRemoteView(frame: CGRect(x: 300, y: 400, width: 100, height: 270))
        siriRemote5.backgroundColor = .clear
        siriRemote5.lineColor = .black
        siriRemote5.hightlightColor = .black
        siriRemote5.highlightedButton = .siri
        view.addSubview(siriRemote5)

        let siriRemote6 = SiriRemoteView(frame: CGRect(x: 500, y: 400, width: 100, height: 270))
        siriRemote6.backgroundColor = .clear
        siriRemote6.lineColor = .black
        siriRemote6.hightlightColor = .black
        siriRemote6.highlightedButton = .select
        view.addSubview(siriRemote6)
    }

}

