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
    
    let border: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let firstButton: UIButton = {
        let button = UIButton()
        button.setTitle("Choose 1", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let secondButton: UIButton = {
        let button = UIButton()
        button.setTitle("Choose 2", for: .normal)
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
        
        self.chatTable.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide)
            make.right.equalTo(self.safeAreaLayoutGuide)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
        }
        
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
    }
    
}
