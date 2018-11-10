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
    
    let identifiantCell = "ChansonCell"
    let identifiantSegue = "VersVideo"

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
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifiantCell) as? ChansonCell {
            cell.creerCell(chanson)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chanson = chansons[indexPath.row]
        performSegue(withIdentifier: identifiantSegue, sender: chanson)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == identifiantSegue {
            if let nouveauControler = segue.destination as? VideoController {
                nouveauControler.chanson = sender as? Chanson
            }
        }
    }
    func ajouterChanson() {
        chansons = [Chanson]()
        let skate1 = Chanson(artiste: "NKA", titre: "SKATING WITH PETER, VERONICA & JOEL !!!", code: "Swh7atj0XAs")
        let crime1 = Chanson(artiste: "Canal crime", titre: "Assassinats dans le Gotha : Jeane Palfrey, la proxénète de la jet-set amériquaine", code: "GqA0Z5BUBvE")
        let orelsan1 = Chanson(artiste: "Orelsan", titre: "Basique", code: "2bjk26RwjyU")
        chansons.append(contentsOf: [skate1,crime1,orelsan1])
        tableView.reloadData()
        
    }
}
