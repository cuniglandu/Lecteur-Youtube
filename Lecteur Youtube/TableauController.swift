//
//  TableauController.swift
//  Lecteur Youtube
//
//  Created by Yann Letouzey on 04/11/2018.
//  Copyright © 2018 Yann Letouzey. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var chansons = [Chanson]()
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func ajouterChanson() {
        chansons = [Chanson]()
        let skate1 = Chanson(artiste: "NKA", titre: "SKATING WITH PETER, VERONICA & JOEL !!!", code: "Swh7atj0XAs")
        chansons.append(skate1)
        
        tableView.reloadData()
    }
}
