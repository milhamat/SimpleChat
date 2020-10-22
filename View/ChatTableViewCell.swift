//
//  ChatTableViewCell.swift
//  SimpleChat
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 18/10/20.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    let leftLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        return label
    }()
    
    let rightLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        return label
    }()
    
    let leftBubleView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        return view
    }()
    
    let rightBubleView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
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
               
                if chatModel.sender == .bot {
                    self.leftLabel.text = chatModel.message
                    self.leftLabel.numberOfLines = 0
                    self.rightBubleView.isHidden = true
                }
                
                if chatModel.sender == .user {
                    self.rightLabel.text = chatModel.message
                    self.rightLabel.numberOfLines = 0
                    self.leftLabel.isHidden = true
                    self.leftBubleView.isHidden = true
                    self.rightLabel.isHidden = false
                }
            }
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = UIColor(red: 0.94, green: 0.89, blue: 0.87, alpha: 1.00)
        
        self.addSubview(leftBubleView)
        self.leftBubleView.addSubview(leftLabel)
        
        self.addSubview(rightBubleView)
        self.rightBubleView.addSubview(rightLabel)
        
       
        self.leftBubleView.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.height.equalTo(self.leftLabel).offset(10)
            make.width.equalTo(self.leftLabel).offset(10)
        }
        
        self.leftLabel.snp.makeConstraints { (make) in
            make.centerX.centerY.equalTo(self.leftBubleView)
        }
        
        self.rightBubleView.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-20)
            make.height.equalTo(self.rightLabel).offset(10)
            make.width.equalTo(self.rightLabel).offset(10)
        }
        
        self.rightLabel.snp.makeConstraints { (make) in
            make.centerX.centerY.equalTo(self.rightBubleView)
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}


