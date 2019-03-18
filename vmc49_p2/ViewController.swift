//
//  ViewController.swift
//  vmc49_p2
//
//  Created by Victor Chen on 3/9/19.
//  Copyright © 2019 Victor Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var itemTextView: UITextView!
    var quantityTextView: UITextView!
    var itemTextField: UITextField!
    var quantityTextField: UITextField!
    var addButton: UIButton!
    var listTextView: UITextView!
    var listitemTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Do any additional setup after loading the view, typically from a nib.
        itemTextView = UITextView()
        itemTextView.translatesAutoresizingMaskIntoConstraints = false
        itemTextView.text = "Grocery Item:"
        itemTextView.isEditable = false
        itemTextView.font = UIFont.systemFont(ofSize: 16)
        itemTextView.textColor = .black
        itemTextView.textAlignment = .right
        view.addSubview(itemTextView)
        
        quantityTextView = UITextView()
        quantityTextView.translatesAutoresizingMaskIntoConstraints = false
        quantityTextView.text = "Quantity:"
        quantityTextView.isEditable = false
        quantityTextView.font = UIFont.systemFont(ofSize: 16)
        quantityTextView.textColor = .black
        quantityTextView.textAlignment = .right
        view.addSubview(quantityTextView)
        
        itemTextField = UITextField()
        itemTextField.translatesAutoresizingMaskIntoConstraints = false
        itemTextField.backgroundColor = .lightGray
        view.addSubview(itemTextField)
        
        quantityTextField = UITextField()
        quantityTextField.translatesAutoresizingMaskIntoConstraints = false
        quantityTextField.backgroundColor = .lightGray
        view.addSubview(quantityTextField)
        
        addButton = UIButton()
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setTitle("Add Item", for: .normal)
        addButton.setTitleColor(.blue, for: .normal)
        addButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        addButton.addTarget(self, action: #selector(addButtonPressed), for: .touchUpInside)
        view.addSubview(addButton)
        
        listTextView = UITextView()
        listTextView.translatesAutoresizingMaskIntoConstraints = false
        listTextView.text = "Grocery List:"
        listTextView.isEditable = false
        listTextView.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        listTextView.textColor = .black
        view.addSubview(listTextView)
        
        listitemTextView = UITextView()
        listitemTextView.translatesAutoresizingMaskIntoConstraints = false
        listTextView.isEditable = false
        listitemTextView.font = UIFont.systemFont(ofSize: 12)
        listitemTextView.textColor = .black
        listitemTextView.textAlignment = .center
        view.addSubview(listitemTextView)
        
        setUpConstraints()
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            itemTextView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            itemTextView.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -5),
            itemTextView.widthAnchor.constraint(equalToConstant: 125),
            itemTextView.heightAnchor.constraint(equalToConstant: 30)
            ])
        
        NSLayoutConstraint.activate([
            quantityTextView.topAnchor.constraint(equalTo: itemTextView.bottomAnchor, constant: 10),
            quantityTextView.trailingAnchor.constraint(equalTo: itemTextView.trailingAnchor),
            quantityTextView.widthAnchor.constraint(equalTo: itemTextView.widthAnchor),
            quantityTextView.heightAnchor.constraint(equalTo: itemTextView.heightAnchor)
            ])
        
        NSLayoutConstraint.activate([
            itemTextField.topAnchor.constraint(equalTo: itemTextView.topAnchor),
            itemTextField.leadingAnchor.constraint(equalTo: itemTextView.trailingAnchor, constant: 10),
            itemTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            itemTextField.heightAnchor.constraint(equalTo: itemTextView.heightAnchor)
            ])
        
        NSLayoutConstraint.activate([
            quantityTextField.topAnchor.constraint(equalTo: quantityTextView.topAnchor),
            quantityTextField.leadingAnchor.constraint(equalTo: itemTextField.leadingAnchor),
            quantityTextField.trailingAnchor.constraint(equalTo: itemTextField.trailingAnchor),
            quantityTextField.heightAnchor.constraint(equalTo: quantityTextView.heightAnchor)
            ])
        
        NSLayoutConstraint.activate([
            addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addButton.topAnchor.constraint(equalTo: quantityTextView.bottomAnchor, constant: 30),
            addButton.widthAnchor.constraint(equalToConstant: 80),
            addButton.heightAnchor.constraint(equalToConstant: 25)
            ])
        
        NSLayoutConstraint.activate([
            listTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            listTextView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 30),
            listTextView.widthAnchor.constraint(equalToConstant: 100),
            listTextView.heightAnchor.constraint(equalToConstant: 25)
            ])
        
        NSLayoutConstraint.activate([
            listitemTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            listitemTextView.topAnchor.constraint(equalTo: listTextView.bottomAnchor, constant: 10),
            listitemTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            listitemTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
            ])
    }
    
    @objc func addButtonPressed() {
        if let item = itemTextField.text, let number = quantityTextField.text, item != "", number != "" {
            listitemTextView.text += "Item: \(item), Quantity: \(number)\n"
        }
    }

}

