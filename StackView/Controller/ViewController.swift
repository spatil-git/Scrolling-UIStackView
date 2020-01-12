//
//  ViewController.swift
//  StackView
//
//  Created by Sanjay Patil on 1/11/20.
//  Copyright © 2020 Sanjay Patil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var phView: UIView!
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let moviesModel:[Model] = MoviesModel().loadJsonModel()
        stackView.removeArrangedSubview(phView)
        for model:Model in moviesModel {
            let view = UINib(nibName: "Movies", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! MoviewXib
            view.name.text = model.name
            view.review.text = model.review
            view.rating.text = "Rating: " + model.rating
            stackView.addArrangedSubview(view)
        }
    }
}

