//
//  SelectionScreen.swift
//  DelegatesAndProtocols
//
//  Created by Amber Spadafora on 5/6/21.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(name: String, color: UIColor)
}

class SelectionScreen: UIViewController {

    var selectionDelegate: SideSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func rebelForceButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(name: "Darth Vader", color: UIColor.red)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func imperialForceButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(name: "Luke Skywalker", color: UIColor.cyan)
        dismiss(animated: true, completion: nil)
    }
    

}
