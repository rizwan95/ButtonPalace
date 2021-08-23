//
//  ViewController.swift
//  ButtonPalace
//
//  Created by Rizwan Ahmed A on 01/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        plainButton()
    }
    
    private func plainButton() {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Start download"
        configuration.subtitle = "(Downloads a random image)"
        configuration.baseBackgroundColor = .systemOrange

        configuration.attributedTitle = AttributedString("Start download", attributes: AttributeContainer([NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20.0)]))

        configuration.attributedSubtitle = AttributedString("(Downloads a random image)", attributes: AttributeContainer([NSAttributedString.Key.font: UIFont.smallSystemFontSize]))

        configuration.background = .listSidebarCell()
        configuration.buttonSize = .large
        configuration.contentInsets = .init(top: 20, leading: 20, bottom: 20, trailing: 20)
        configuration.cornerStyle = .capsule
        configuration.image = UIImage(systemName: "arrow.down.square.fill")

        configuration.imagePlacement = .trailing
        configuration.imagePadding = 20
        configuration.showsActivityIndicator = false // Image will be hidden, if activity indicator is on
//        configuration.preferredSymbolConfigurationForImage = .init(scale: .large)
        configuration.macIdiomStyle = .automatic
        configuration.titleAlignment = .center
        
        configuration.titlePadding = 20
//        configuration.subtitleTextAttributesTransformer = .init({ container in
//            return AttributeContainer([NSAttributedString.Key.foregroundColor: UIColor.systemOrange])
//        })
//        configuration.titleTextAttributesTransformer = .init({ container in
//            AttributeContainer([NSAttributedString.Key.foregroundColor: UIColor.systemOrange])
//        })
        
        
        
        let button = UIButton(configuration: configuration, primaryAction: UIAction(handler: { action in
            debugPrint("Download Button tapped!")
        }))
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])


    }


}

