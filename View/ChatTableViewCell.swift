//
//  ChatTableViewCell.swift
//  SimpleChat
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 18/10/20.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    let listArrayLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let textBuble: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 10
        return view
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    func configureCell(chatModel: ChatModel){
        DispatchQueue.global().async {
            Thread.sleep(forTimeInterval: chatModel.timeInterval)
            
            DispatchQueue.main.async {
                self.listArrayLabel.text = chatModel.message
                
                if chatModel.sender == .user {
                    self.listArrayLabel.textAlignment = .right
                }
            }
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = .white
        
//        self.addSubview(textBuble)
//        self.textBuble.addSubview(listArrayLabel)
        self.addSubview(listArrayLabel)
       
        
//        self.textBuble.snp.makeConstraints { (make) in
//            make.top.equalTo(self.safeAreaLayoutGuide).offset(20)
//            make.left.equalTo(self.safeAreaLayoutGuide).offset(20)
//            make.height.equalTo(self.listArrayLabel).offset(10)
//            make.width.equalTo(self.listArrayLabel).offset(20)
//        }
        
        self.listArrayLabel.snp.makeConstraints { (make) in
//            make.centerX.centerY.equalTo(self.textBuble)
            
            make.top.bottom.equalTo(self)
            make.left.equalTo(self).offset(20)
            make.right.equalTo(self).offset(-20)
            make.height.equalTo(50)
               
        }
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}


