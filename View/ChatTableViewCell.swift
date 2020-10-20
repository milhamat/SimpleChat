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
        return view
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = .white
        
        self.addSubview(textBuble)
        self.addSubview(listArrayLabel)
       
        
        self.textBuble.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.height.equalTo(self.listArrayLabel).offset(10)
            make.width.equalTo(self.listArrayLabel).offset(10)
        }
        
        self.listArrayLabel.snp.makeConstraints { (make) in
            make.centerX.centerY.equalTo(self.textBuble)
        }
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
