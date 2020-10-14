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
        
        self.chatTable.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.left.equalTo(self.safeAreaLayoutGuide)
            make.right.equalTo(self.safeAreaLayoutGuide)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
        }
    }
    
}
