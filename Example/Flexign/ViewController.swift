//
//  ViewController.swift
//  Flexign
//
//  Created by tombartkowski on 04/28/2021.
//  Copyright (c) 2021 tombartkowski. All rights reserved.
//

import UIKit
import Flexign

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .system(.background)
        let view = Button(title: "Click Me", style: ButtonStyle.Default.textPrimary)
        self.view.addSubview(view)

        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        view.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.view.layoutIfNeeded()
        
//        view.apply(style: ViewStyle(backgroundColor: UIColor.system.blue, cornerRadius: .squircle, elevation: ElevationLevel.three))
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
