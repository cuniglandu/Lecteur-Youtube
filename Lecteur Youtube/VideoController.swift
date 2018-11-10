//
//  VideoController.swift
//  Lecteur Youtube
//
//  Created by Yann Letouzey on 10/11/2018.
//  Copyright © 2018 Yann Letouzey. All rights reserved.
//

import UIKit
import WebKit

class VideoController: UIViewController {

    var chanson: Chanson?
    
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if chanson != nil {
            chargerVideo(chanson: chanson!)
        }
    }
    
    func chargerVideo(chanson: Chanson) {
        if let url = URL(string: chanson.videoUrl) {
            let requete = URLRequest(url: url)
            webView.load(requete)
        }
        
    }
}
