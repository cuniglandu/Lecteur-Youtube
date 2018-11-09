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
    
    let identifientCell = "ChansonCell"

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()
        title = "Mes vidéos préférées"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chanson = chansons[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifientCell) as? ChansonCell {
            cell.creerCell(chanson)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    func ajouterChanson() {
        chansons = [Chanson]()
        let skate1 = Chanson(artiste: "NKA", titre: "SKATING WITH PETER, VERONICA & JOEL !!!", code: "Swh7atj0XAs")
        chansons.append(skate1)
        
        tableView.reloadData()
    }
}
