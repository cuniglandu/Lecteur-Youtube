//
//  VideoController.swift
//  Lecteur Youtube
//
//  Created by Yann Letouzey on 10/11/2018.
//  Copyright © 2018 Yann Letouzey. All rights reserved.
//

import UIKit

class VideoController: UIViewController {

    var chanson: Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        if chanson != nil {
            title = chanson!.titre
        }
    }
}
