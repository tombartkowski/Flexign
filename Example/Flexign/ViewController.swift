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
        if #available(iOS 13.0, *) {
            addDemoView()
        }
    }

    // MARK: Private

    @available(iOS 13.0, *)
    private func addDemoView() {
        view.backgroundColor = .secondarySystemBackground

        // Code from quick example
        let headerLabel = Label(text: "Flexign demo", style: .styleWith(font: .header2))

        let avatar = Avatar()
        avatar.image = UIImage(named: "profile")

        let labelsContent = VerticalLabelsContent()
        labelsContent.topLabel.text = "John Doe"
        labelsContent.bottomLabel.text = "You should try Flexign. It's super cool."

        let icon = Icon(
            image: UIImage(systemName: "plus.bubble.fill"),
            style: IconStyle(
                viewStyle: .colored(.system(.blue), cornerRadius: .squircle),
                size: IconSize.default.lg,
                color: IconStyle.Color.tinted(.white),
                padding: Padding.p2
            )
        )

        let row = HorizontalListRow(
            media: avatar,
            content: labelsContent,
            extra: icon,
            style: HorizontalListRowStyle(itemsSpacing: Padding.p4, padding: .zero)
        )

        let noThanksButton = Button(
            title: "No thanks",
            image: UIImage(systemName: "xmark"),
            style: .with(colorStyle: .lightFillDarkText(.system(.blue)))
        )

         let getStartedButton = Button(
            title: "Get started",
            image: UIImage(systemName: "hand.thumbsup.fill"),
            style: .with(colorStyle: .darkFillWhiteText(.system(.blue)))
        )
        
        let verticalStackView = UIStackView()
        verticalStackView.distribution = .fillEqually
        verticalStackView.spacing = Padding.p4

        verticalStackView.addArrangedSubview(noThanksButton)
        verticalStackView.addArrangedSubview(getStartedButton)

        let mainStackView = UIStackView()
        mainStackView.axis = .vertical
        mainStackView.spacing = 20
        view.addSubview(mainStackView)

        mainStackView.addArrangedSubview(headerLabel)
        mainStackView.addArrangedSubview(row)
        mainStackView.addArrangedSubview(verticalStackView)
        
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor,
            constant: Padding.p8
        )
        .isActive = true
        mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Margin.md)
            .isActive = true
        view.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor, constant: Margin.md)
            .isActive = true

        avatar.translatesAutoresizingMaskIntoConstraints = false
        avatar.heightAnchor.constraint(equalToConstant: 55).isActive = true
        avatar.widthAnchor.constraint(equalToConstant: 55).isActive = true
    }
}

