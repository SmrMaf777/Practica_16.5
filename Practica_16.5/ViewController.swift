//
//  ViewController.swift
//  Practica_16.5
//
//  Created by Алексей Крицкий on 17.02.2024.
//

import UIKit

class ViewController: UIViewController {

    let label1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello Swift"
        return label
    }()
    
    let label2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Today is a good day!"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        view.addSubview(label1)
        view.addSubview(label2)
    }
    
    private func setupConstraints() {
        label1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        label2.topAnchor.constraint(equalTo: label1.topAnchor, constant: 20).isActive = true
        label2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

