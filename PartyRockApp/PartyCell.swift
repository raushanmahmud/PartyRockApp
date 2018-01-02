//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by studentas on 02/01/2018.
//  Copyright © 2018 studentas. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func updateUI(partyRock: PartyRock){
        videoTitle.text = partyRock.videoTitle
        // TODO: set image from url
    }
}
