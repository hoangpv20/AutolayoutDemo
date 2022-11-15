//
//  ViewController.swift
//  TableViewXib02
//
//  Created by admin on 10/11/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let data: [Car] = [
    Car(imageName: "car", carName: "Tesla Model S", carPrice: "$87,345", carSpeed: "MaxSpeed: 180mph", carTime: "0 - 160mph: 60s", carBooking: "Book")
    ]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let car = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        cell.loadData(item: car)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }

}

struct Car{
    let imageName: String
    let carName: String
    let carPrice: String
    let carSpeed: String
    let carTime: String
    let carBooking: String
}
