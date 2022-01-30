//
//  ViewController.swift
//  Homework 6.3
//
//  Created by Aliaksandr Miatnikau on 27.01.22.
//

import UIKit

class ViewController: UIViewController {

    var screenHeight = UIScreen.main.bounds.height
    var screenWidth = UIScreen.main.bounds.width
    var onUpButton = UIButton()
    var onDownButton = UIButton()
    var onLeftButton = UIButton()
    var onRightButton = UIButton()
    var round = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        createUpButton()
        createDownButton()
        createLeftButton()
        createRightButton()
        createRound()
    
}
    func createRound() {
        round.frame = CGRect(x: (screenWidth - 100) / 2, y: (screenHeight-100) / 2, width: 100, height: 100)
        round.backgroundColor = getRandomColour()
        round.layer.cornerRadius = round.frame.size.width / 2
        view.addSubview(round)
    }
       
    
    func getRandomColour() -> UIColor {
        return UIColor(red: CGFloat.random(in: 0...1),
                       green: CGFloat.random(in: 0...1),
                       blue: CGFloat.random(in: 0...1),
                       alpha: 1.0)
    }
    func createUpButton() {
        onUpButton.setTitle("Up", for: .normal)
        onUpButton.frame = CGRect(x: (screenWidth / 2 - 50), y: (screenHeight - 180), width: 100, height: 50)
        onUpButton.backgroundColor = .gray
        onUpButton.layer.cornerRadius = 15
        onUpButton.addTarget(self, action: #selector(onUpButtonClick), for: .touchUpInside)
        view.addSubview(onUpButton)
        
    }
    
    func createDownButton() {
        onDownButton.setTitle("Down", for: .normal)
        onDownButton.frame = CGRect(x: (screenWidth / 2 - 50), y: (screenHeight - 80), width: 100, height: 50)
        onDownButton.backgroundColor = .gray
        onDownButton.layer.cornerRadius = 15
        onDownButton.addTarget(self, action: #selector(onDownButtonClick), for: .touchUpInside)
        view.addSubview(onDownButton)
    }
    func createLeftButton() {
        onLeftButton.setTitle("Left", for: .normal)
        onLeftButton.frame = CGRect(x: (screenWidth / 2 - 150), y: (screenHeight - 130), width: 100, height: 50)
        onLeftButton.backgroundColor = .gray
        onLeftButton.layer.cornerRadius = 15
        onLeftButton.addTarget(self, action: #selector(onLeftButtonClick), for: .touchUpInside)
        view.addSubview(onLeftButton)
    }
    func createRightButton() {
        onRightButton.setTitle("Right", for: .normal)
        onRightButton.frame = CGRect(x: (screenWidth / 2 + 50), y: (screenHeight - 130), width: 100, height: 50)
        onRightButton.backgroundColor = .gray
        onRightButton.layer.cornerRadius = 15
        onRightButton.addTarget(self, action: #selector(onRightButtonClick), for: .touchUpInside)
        view.addSubview(onRightButton)
    
    }
    
    @objc func onUpButtonClick() {
        if round.frame.origin.y.isLess(than: 50) {
            round.frame = round.frame.offsetBy(dx: 0, dy: 0)
        } else {
            round.frame = round.frame.offsetBy(dx: 0, dy: -50)
        }
    }
    
    @objc func onDownButtonClick() {
        if round.frame.origin.y.isLess(than: screenHeight - 320) {
            round.frame = round.frame.offsetBy(dx: 0, dy: 50)
        } else {
            round.frame = round.frame.offsetBy(dx: 0, dy: 0)
        }
    }
    
    @objc func onLeftButtonClick() {
        if round.frame.origin.x.isLess(than: 50) {
            round.frame = round.frame.offsetBy(dx: 0, dy: 0)
        } else {
            round.frame = round.frame.offsetBy(dx: -50, dy: 0)
        }
    }
    @objc func onRightButtonClick() {
        if round.frame.origin.x.isLess(than: screenWidth -  150) {
            round.frame = round.frame.offsetBy(dx: 50, dy: 0)
        } else {
            round.frame = round.frame.offsetBy(dx: 0, dy: 0)
        }
    }
    
    
}
