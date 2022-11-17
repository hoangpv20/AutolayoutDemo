//
//  NightGridViewController.swift
//  ListOfTasksdemo02
//
//  Created by admin on 17/11/2022.
//

import UIKit

class NightGridViewController: UIViewController {

    let itemTVC = NightItemsTableViewController()
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var lightButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var gridButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        plusButton.backgroundColor = .red
        plusButton.layer.cornerRadius = 0.5 * plusButton.bounds.size.width
        plusButton.clipsToBounds = true
        plusButton.addTarget(self, action: #selector(plusAction), for: .touchUpInside)
        
        view1.layer.cornerRadius = 10.0
        view2.layer.cornerRadius = 10.0
        view3.layer.cornerRadius = 10.0
        view4.layer.cornerRadius = 10.0
        view5.layer.cornerRadius = 10.0
        view6.layer.cornerRadius = 10.0

    }
    
    @objc
    func plusAction(){
        if let sheet = self.itemTVC.sheetPresentationController{
            sheet.detents = [.medium(), .large()]
            sheet.prefersGrabberVisible = true
        }
        self.present(self.itemTVC, animated: true, completion: nil)
        
    }
    @IBAction func didTapNightGridButtton(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "nighthome") as! NightHomeViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    @IBAction func didTapDayGridButtton(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "grid") as! GridViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    @IBAction func didTapNightSearchButtton(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "nightsearch") as! NightSearchViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    @IBAction func didTapNightHomeButtton(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "nighthome") as! NightHomeViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    

}