//
//  CustomCell.swift
//  TableViewXib02
//
//  Created by admin on 10/11/2022.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var nameCar: UILabel!
    @IBOutlet weak var speedCar: UILabel!
    @IBOutlet weak var timeCar: UILabel!
    @IBOutlet weak var priceCar: UILabel!
    @IBOutlet weak var bookCar: UIButton!
    
    func loadData(item: Car){
        iconImage.image = UIImage(named: item.imageName)
        nameCar.text = item.carName
        speedCar.text = item.carSpeed
        timeCar.text = item.carTime
        priceCar.text = item.carPrice
        bookCar.setTitle(item.carBooking, for: .normal)
    }
}
