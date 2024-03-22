//
//  ViewController.swift
//  Smart Spectra SDK
//
//  Created by Benyamin Mokhtarpour on 8/30/23.
//

import UIKit

class SampleViewController: UIViewController {
    private lazy var button : SmartSpectraButton = {
        let res = SmartSpectraButton.init(apiKey: "YOUR_API_KEY")
        res.translatesAutoresizingMaskIntoConstraints = false
        res.delegate = self

        return res
    }()
    
    private lazy var resultView : SmartSpectraResultView = {
        let res = SmartSpectraResultView()
        res.translatesAutoresizingMaskIntoConstraints = false
        return res
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.core.delegate = self
//        self.core.start()

        overrideUserInterfaceStyle = .light
//        addInfoButton()
        view.addSubview(resultView)
        NSLayoutConstraint.activate([
            resultView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            resultView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            resultView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            resultView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
        ])
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: resultView.bottomAnchor, constant: 255),
            button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
        ])

    }


}

extension SampleViewController: SmartSpectraDelegate {
    func passProcessedView(_ view: SmartSpectraResultView) {
        self.resultView = view
    }
}
