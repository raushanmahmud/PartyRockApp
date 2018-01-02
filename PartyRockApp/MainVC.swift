//
//  ViewController.swift
//  PartyRockApp
//
//  Created by studentas on 02/01/2018.
//  Copyright © 2018 studentas. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://i.ytimg.com/vi/sgOsWgz7Vx0/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SjmTFIHX1yo\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>", videoTitle: "Lights Out")
        
        let p2 = PartyRock(imageURL: "https://upload.wikimedia.org/wikipedia/en/9/98/Havana_%28featuring_Young_Thug%29_%28Official_Single_Cover%29_by_Camila_Cabello.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HCjNJDNzw8Y\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>", videoTitle: "Havana")
        
        let p3 = PartyRock(imageURL: "http://s2.hulkshare.com/song_images/original/8/c/f/8cf69eb5e5d66e224c13bf14e0b95268.jpg?dd=1394283237", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/v9uDwppN5-w\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>", videoTitle: "Neon Lights")
        
        let p4 = PartyRock(imageURL: "http://ukulelecheats.com/wp-content/uploads/2016/10/talking-to-the-moon-ukulele-chords-bruno-mars.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/J9pXeziqdLc\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>\" allow=\"encrypted-media\" allowfullscreen></iframe>", videoTitle: "Talking to the Moon")
        
        let p5 = PartyRock(imageURL: "https://static.stereogum.com/uploads/2016/07/Screenshot-1230-640x360.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2d7U4CX0PHk\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>", videoTitle: "CRZY")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        } else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
}

