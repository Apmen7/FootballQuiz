//
//  ViewController.swift
//  FootballQuiz
//
//  Created by Armen on 20.09.2023.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: - Private properties
    private let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
    private let logoImage = UIImageView()
    private let buttonStackView = UIStackView()
    private let startButton = UIButton()
    private let levelsButton = UIButton()
    private let settingsButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
}

// MARK: - Private extensions
private extension MainViewController {
    
    func setupLayout() {
        configureBackgroundImage()
        configureLogoImage()
        configureButtonStackView()
        configureStartButton()
        configureLevelsButton()
        configureSettingsButton()
    }
    
    func configureBackgroundImage() {
        backgroundImage.image = UIImage(named: "pxfuel")
        self.view.insertSubview(backgroundImage, at: 0)
        backgroundImage.contentMode = .scaleToFill
        backgroundImage.alpha = 0.6
    }
    
    func configureLogoImage() {
        logoImage.image = UIImage(named: "logo")
        view.addSubview(logoImage)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.heightAnchor.constraint(equalToConstant: 150),
            logoImage.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    func configureButtonStackView() {
        view.addSubview(buttonStackView)
        buttonStackView.axis = .vertical
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.spacing = 20
        
        NSLayoutConstraint.activate([
            buttonStackView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 40),
            buttonStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func configureStartButton() {
        startButton.setTitle("Начать", for: .normal)
        startButton.backgroundColor = .systemBlue
        buttonStackView.addArrangedSubview(startButton)
        startButton.layer.cornerRadius = 10
        startButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            startButton.heightAnchor.constraint(equalToConstant: 40),
            startButton.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    func configureLevelsButton() {
        levelsButton.setTitle("Уровни", for: .normal)
        levelsButton.backgroundColor = .systemBlue
        buttonStackView.addArrangedSubview(levelsButton)
        levelsButton.layer.cornerRadius = 10
        levelsButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            levelsButton.heightAnchor.constraint(equalToConstant: 40),
            levelsButton.widthAnchor.constraint(equalToConstant: 250)
        ])

    }
    
    func configureSettingsButton() {
        settingsButton.setTitle("Настройки", for: .normal)
        settingsButton.backgroundColor = .systemBlue
        buttonStackView.addArrangedSubview(settingsButton)
        settingsButton.layer.cornerRadius = 10
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            settingsButton.heightAnchor.constraint(equalToConstant: 40),
            settingsButton.widthAnchor.constraint(equalToConstant: 250)
        ])

    }
    
}
