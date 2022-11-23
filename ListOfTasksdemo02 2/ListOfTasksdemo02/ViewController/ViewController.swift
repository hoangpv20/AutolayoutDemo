//
//  ViewController.swift
//  ListOfTasksdemo02
//
//  Created by admin on 16/11/2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    let itemTVC = ItemsTableViewController()
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var lightButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var gridButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
        plusButton.backgroundColor = .red
        plusButton.layer.cornerRadius = 0.5 * plusButton.bounds.size.width
        plusButton.clipsToBounds = true
        plusButton.addTarget(self, action: #selector(plusAction), for: .touchUpInside)
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.contentView.layer.cornerRadius = 5.0
        cell.contentView.layer.masksToBounds = true
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 372, height: 100)
    }
    @objc
    func plusAction(){
        if let sheet = self.itemTVC.sheetPresentationController{
            sheet.detents = [.medium(), .large()]
            sheet.prefersGrabberVisible = true
        }
        self.present(self.itemTVC, animated: true, completion: nil)
        
    }
    
    @IBAction func didTapSearchButtton(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "search") as! SearchViewController
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }
    @IBAction func didTapGridButtton(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "grid") as! GridViewController
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }
    @IBAction func didTapNightButtton(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "nighthome") as! NightHomeViewController
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }

}

