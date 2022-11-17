//
//  NightItemsTableViewController.swift
//  ListOfTasksdemo02
//
//  Created by admin on 17/11/2022.
//

import UIKit

class NightItemsTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemPink
        makeButton()
    }
    func makeButton(){
        
        var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = .brown
        let button = UIButton(configuration: config, primaryAction: .init(handler: { _ in
        }))
        button.setTitle("Save", for: .normal)
        button.configuration?.cornerStyle = .capsule
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 180).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 350).isActive = true
        
        let textField1 = UITextField()
        view.addSubview(textField1)
        textField1.translatesAutoresizingMaskIntoConstraints = false
        textField1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
        textField1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField1.widthAnchor.constraint(equalToConstant: 302).isActive = true
        textField1.backgroundColor = .white
        textField1.attributedPlaceholder = NSAttributedString(
            string: "Write anything in your mind",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        
        let label1 = UILabel()
        view.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.attributedText = NSAttributedString(string: "Task")
        label1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
        label1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        label1.widthAnchor.constraint(equalToConstant: 302).isActive = true
        
        let textField2 = UITextField()
        view.addSubview(textField2)
        textField2.translatesAutoresizingMaskIntoConstraints = false
        textField2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        textField2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField2.widthAnchor.constraint(equalToConstant: 302).isActive = true
        textField2.backgroundColor = .white
        textField2.attributedPlaceholder = NSAttributedString(
            string: "Todo title...",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        
        let label2 = UILabel()
        view.addSubview(label2)
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.attributedText = NSAttributedString(string: "Todo title")
        label2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        label2.widthAnchor.constraint(equalToConstant: 302).isActive = true
        
        
    }

}
