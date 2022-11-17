//
//  NightSearchViewController.swift
//  ListOfTasksdemo02
//
//  Created by admin on 17/11/2022.
//

import UIKit

class NightSearchViewController: UIViewController {

    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var lightButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view4: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        plusButton.backgroundColor = .red
        plusButton.layer.cornerRadius = 0.5 * plusButton.bounds.size.width
        plusButton.clipsToBounds = true
        
        view1.layer.cornerRadius = 10.0
        view2.layer.cornerRadius = 10.0
        view3.layer.cornerRadius = 10.0
        view4.layer.cornerRadius = 10.0
        view5.layer.cornerRadius = 10.0
    }
    @IBAction func didTapNightHomeButtton(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "nighthome") as! NightHomeViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    @IBAction func didTapDaySearchButtton(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "search") as! SearchViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }

    
}
