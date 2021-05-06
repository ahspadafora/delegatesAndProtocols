//
//  ViewController.swift
//  DelegatesAndProtocols
//
//  Created by Amber Spadafora on 5/6/21.
//

import UIKit

class BaseViewController: UIViewController, SideSelectionDelegate {
    
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func didTapChoice(name: String, color: UIColor) {
        nameLabel.textColor = color
        nameLabel.text = name
    }

    @IBAction func chooseASideButtonTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(identifier: "selectionScreen") as! SelectionScreen
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
    }
    

}

