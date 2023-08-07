//
//  DetailViewController.swift
//  BountyList
//
//  Created by YANJU1CY 🇰🇷 on 2023/07/18.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    let viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        if let bountyInfo = viewModel.bountyInfo {
            imgView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

class DetailViewModel {
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo) {
        bountyInfo = model
    }
}
