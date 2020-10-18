//
//  ChatTableViewCell.swift
//  SimpleChat
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 18/10/20.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    let leftTextLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let rightTextLabel: UILabel = {
        let label = UILabel()
        return label
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
        
        self.addSubview(leftTextLabel)
        
        self.leftTextLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self)
            make.left.equalTo(self).offset(10)
            make.bottom.equalTo(self)
        }
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
