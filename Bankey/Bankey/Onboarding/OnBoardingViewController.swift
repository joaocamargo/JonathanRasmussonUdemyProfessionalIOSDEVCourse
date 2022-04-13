//
//  OnBoardingViewController.swift
//  Bankey
//
//  Created by joao camargo on 09/04/22.
//

import Foundation

import UIKit

class OnBoardingViewController: UIViewController {
    
    let stackview = UIStackView()
    let label = UILabel()
    let imageView = UIImageView()
    let closeButton = UIButton(type: .system)
    
    init(imageName: String, text: String) {
        imageView.image = UIImage(named: imageName)
        label.text = text
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }

}

extension OnBoardingViewController {
    func style() {
        view.backgroundColor = .systemBackground
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .vertical
        stackview.spacing = 20
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
       // imageView.image = UIImage(named: "delorean")
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        //label.text = "Welcome"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        //label.text = "Bankey is faster, easier to use, and has a brand new look and feel that will make you feel like you are back in 1989."
    }
    
    func layout() {
        stackview.addArrangedSubview(imageView)

        stackview.addArrangedSubview(label)
        view.addSubview(stackview)
        
        NSLayoutConstraint.activate([
            stackview.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackview.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackview.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackview.trailingAnchor, multiplier: 1)
        ])
    }
}
