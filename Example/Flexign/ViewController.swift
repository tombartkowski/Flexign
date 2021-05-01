//
//  ViewController.swift
//  Flexign
//
//  Created by tombartkowski on 04/28/2021.
//  Copyright (c) 2021 tombartkowski. All rights reserved.
//

import Flexign
import UIKit

class ViewController: UIViewController {
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .system(.background)
        if #available(iOS 13.0, *) {
            testing()
        }
    }

    // MARK: Internal

    @available(iOS 13.0, *)
    func testing() {
        let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.spacing = 15
            stackView.distribution = .fill
            return stackView
        }()
        stackView.translatesAutoresizingMaskIntoConstraints = false

        let largeButton = Button(
            title: "Click Me",
            image: UIImage(systemName: "arrow.right"),
            style: ButtonStyle.with(
                size: ButtonSize.Default.lg,
                colorStyle: .darkFillWhiteText(.system(.blue)),
                cornerRadius: .squircle
            )
        )

        let mediumButton = Button(
            title: "Click Me",
            style: ButtonStyle.with(
                size: ButtonSize.Default.lg,
                colorStyle: .lightFillDarkText(.system(.blue)),
                cornerRadius: .squircle
            )
        )

        let smallButton = Button(
            title: "Click Me",
            image: UIImage(systemName: "arrow.right"),
            style: ButtonStyle()
        )
        
        

        let xsButton = Button(
            title: "Click Me",
            image: UIImage(systemName: "arrow.right"),
            style: ButtonStyle(
                viewStyle: .colored(.system(.blue), cornerRadius: .squircle),
                titleStyle: .styleWith(font: .buttonSm, color: .white),
                imageSide: .right,
                highlightedColor: .black,
                size: ButtonSize.Default.xs
            )
        )

        view.addSubview(stackView)

        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        stackView.addArrangedSubview(largeButton)
        stackView.addArrangedSubview(mediumButton)
        stackView.addArrangedSubview(smallButton)
//        stackView.addArrangedSubview(xsButton)
        view.layoutIfNeeded()
    }
}
