//
//  ShareModalVC.swift
//  stify
//
//  Created by Leo Lopez on 16/11/21.
//

import UIKit

class ShareModalVC: UIViewController {
    
    private var visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .light))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .clear
        
        view.addSubview(visualEffectView)
        
        visualEffectView.translatesAutoresizingMaskIntoConstraints = false
        visualEffectView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        visualEffectView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        visualEffectView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        visualEffectView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
    }
}
