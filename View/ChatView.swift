//
//  ChatView.swift
//  SimpleChat
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 14/10/20.
//

import UIKit
import SnapKit

class ChatView: UIView {
    
    let chatTable: UITableView = {
        let chat = UITableView()
        chat.register(ChatTableViewCell.self, forCellReuseIdentifier: "cell")
//        chat.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        chat.backgroundColor = UIColor(red: 0.94, green: 0.89, blue: 0.87, alpha: 1.00)
        return chat
    }()
    
// MARK: - Border Declaration
    
    let border: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        view.layer.cornerRadius = 10
        return view
    }()
    
    let buttonOne: UIButton = {
        let button = UIButton()
        button.setTitle("Hey Yana, kabarku baik", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let buttonTwo: UIButton = {
        let button = UIButton()
        button.setTitle("Hey Yana, kabarku buruk", for: .normal)
        button.tintColor = .white
        return button
    }()
    
// MARK: - Second Border Declaration
    
    let secondBorder: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        view.layer.cornerRadius = 10
        return view
    }()
    
    let buttonThree: UIButton = {
        let button = UIButton()
        button.setTitle("Aku merasa Sedih", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let buttonFour: UIButton = {
        let button = UIButton()
        button.setTitle("Aku merasa Kecewa", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let buttonFive: UIButton = {
        let button = UIButton()
        button.setTitle("Aku merasa ingin melukai diri", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let buttonSix: UIButton = {
        let button = UIButton()
        button.setTitle("Aku merasa Hampa", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    // MARK: - Third Border Declaration
    
    let thirdBorder: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        view.layer.cornerRadius = 10
        return view
    }()
    
    let buttonSeven: UIButton = {
        let button = UIButton()
        button.setTitle("Terimakasih, Yana", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let buttonEight: UIButton = {
        let button = UIButton()
        button.setTitle("Lewati", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    // MARK: - Forth Border Declaration
    
    let forthBorder: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        view.layer.cornerRadius = 10
        return view
    }()
    
    let buttonNine: UIButton = {
        let button = UIButton()
        button.setTitle("Baiklah, aku ingin melihat lebih jauh", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = UIColor(red: 0.94, green: 0.89, blue: 0.87, alpha: 1.00)
        
        self.addSubview(chatTable)
        
        self.addSubview(border)
        self.border.addSubview(buttonOne)
        self.border.addSubview(buttonTwo)
        
        self.addSubview(secondBorder)
        self.secondBorder.addSubview(buttonThree)
        self.secondBorder.addSubview(buttonFour)
        self.secondBorder.addSubview(buttonFive)
        self.secondBorder.addSubview(buttonSix)
        
        self.addSubview(thirdBorder)
        self.thirdBorder.addSubview(buttonSeven)
        self.thirdBorder.addSubview(buttonEight)
        
        self.addSubview(forthBorder)
        self.forthBorder.addSubview(buttonNine)
        
        self.chatTable.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide)
            make.right.equalTo(self.safeAreaLayoutGuide)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
        }
        
// MARK: - Border AutoLayout
        
        self.border.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-20)
            make.height.equalTo(80)
        }
        
        self.buttonOne.snp.makeConstraints { (make) in
            make.left.equalTo(self.border).offset(20)
            make.top.equalTo(self.border).offset(5)
        }
        
        self.buttonTwo.snp.makeConstraints { (make) in
            make.top.equalTo(self.buttonOne.snp.bottom)
            make.left.equalTo(self.border).offset(20)
        }
        
// MARK: - Second Border AutoLayout
        
        self.secondBorder.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-20)
            make.height.equalTo(150)
        }
        
        self.buttonThree.snp.makeConstraints { (make) in
            make.left.equalTo(self.secondBorder).offset(20)
            make.top.equalTo(self.secondBorder).offset(5)
        }
        
        self.buttonFour.snp.makeConstraints { (make) in
            make.top.equalTo(self.buttonThree.snp.bottom)
            make.left.equalTo(self.secondBorder).offset(20)
        }
        
        self.buttonFive.snp.makeConstraints { (make) in
            make.top.equalTo(self.buttonFour.snp.bottom)
            make.left.equalTo(self.secondBorder).offset(20)
        }
        
        self.buttonSix.snp.makeConstraints { (make) in
            make.top.equalTo(self.buttonFive.snp.bottom)
            make.left.equalTo(self.secondBorder).offset(20)
        }
        
// MARK: - Third Border AutoLayout
        self.thirdBorder.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-20)
            make.height.equalTo(80)
        }
        
        self.buttonSeven.snp.makeConstraints { (make) in
            make.left.equalTo(self.thirdBorder).offset(20)
            make.top.equalTo(self.thirdBorder).offset(5)
        }
        
        self.buttonEight.snp.makeConstraints { (make) in
            make.top.equalTo(self.buttonSeven.snp.bottom)
            make.left.equalTo(self.border).offset(20)
        }
// MARK: - Forth Border AutoLayout
        self.forthBorder.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-20)
            make.height.equalTo(60)
        }

        self.buttonNine.snp.makeConstraints { (make) in
            make.left.equalTo(self.forthBorder).offset(20)
            make.top.equalTo(self.forthBorder).offset(5)
        }

    }
    
}
