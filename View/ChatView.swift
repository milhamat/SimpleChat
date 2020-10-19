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
        chat.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return chat
    }()
    
// MARK: - Border Declaration
    
    let border: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let firstButton: UIButton = {
        let button = UIButton()
        button.setTitle("Baik", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let secondButton: UIButton = {
        let button = UIButton()
        button.setTitle("Buruk", for: .normal)
        button.tintColor = .white
        return button
    }()
    
// MARK: - Second Border Declaration
    
    let secondBorder: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let thirdButton: UIButton = {
        let button = UIButton()
        button.setTitle("Aku merasa Sedih", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let forthButton: UIButton = {
        let button = UIButton()
        button.setTitle("Aku merasa Kecewa", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let fifthButton: UIButton = {
        let button = UIButton()
        button.setTitle("Aku merasa ingin melukai diri", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let sixthButton: UIButton = {
        let button = UIButton()
        button.setTitle("Aku merasa Hampa", for: .normal)
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
        self.backgroundColor = .white
        
        self.addSubview(chatTable)
        
        self.addSubview(border)
        self.addSubview(firstButton)
        self.addSubview(secondButton)
        
        self.addSubview(secondBorder)
        self.addSubview(thirdButton)
        self.addSubview(forthButton)
        self.addSubview(fifthButton)
        self.addSubview(sixthButton)
        
        self.chatTable.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide)
            make.right.equalTo(self.safeAreaLayoutGuide)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
        }
        
// MARK: - Border AutoLayout
        
        self.border.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide)
            make.right.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(80)
            make.width.equalTo(self.safeAreaLayoutGuide)
        }
        
        self.firstButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.border)
            make.top.equalTo(self.border).offset(5)
        }
        
        self.secondButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.firstButton.snp.bottom)
            make.centerX.equalTo(self.border)
        }
        
// MARK: - Second Border AutoLayout
        
        self.secondBorder.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide)
            make.right.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(150)
            make.width.equalTo(self.safeAreaLayoutGuide)
        }
        
        self.thirdButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.secondBorder)
            make.top.equalTo(self.secondBorder).offset(5)
        }
        
        self.forthButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.thirdButton.snp.bottom)
            make.centerX.equalTo(self.secondBorder)
        }
        
        self.fifthButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.forthButton.snp.bottom)
            make.centerX.equalTo(self.secondBorder)
        }
        
        self.sixthButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.fifthButton.snp.bottom)
            make.centerX.equalTo(self.secondBorder)
        }
    }
    
}
