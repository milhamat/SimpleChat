//
//  ViewController.swift
//  SimpleChat
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 14/10/20.
//

import UIKit

class ChatController: UIViewController {
    
    private var chatView: ChatView!
    private var chatModel = [ChatModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        
        self.chatView = ChatView(frame: self.view.frame)
        self.view = self.chatView
        
        self.chatView.chatTable.delegate = self
        self.chatView.chatTable.dataSource = self
        
        self.chatView.chatTable.separatorStyle = .none
        
//        self.title = "YANA"
        
        self.chatModel.append(contentsOf: ChatBrain.openingChat())
        
        self.chatView.border.isHidden = true
        
        self.chatView.secondBorder.isHidden = true
        self.chatView.buttonFour.isHidden = true
        self.chatView.buttonFive.isHidden = true
        self.chatView.buttonSix.isHidden = true
        
        self.chatView.thirdBorder.isHidden = true
        self.chatView.buttonSeven.isHidden = true
        self.chatView.buttonEight.isHidden = true
        
        self.chatView.forthBorder.isHidden = true
        self.chatView.buttonNine.isHidden = true
        
        DispatchQueue.global().async {
            Thread.sleep(forTimeInterval: self.chatModel.last!.timeInterval)
        }
        
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { (timer) in
            self.chatView.border.isHidden = false
        }
        
        self.chatView.buttonOne.addTarget(self, action: #selector(firstOpti), for: .touchUpInside)
        self.chatView.buttonTwo.addTarget(self, action: #selector(secondOpti), for: .touchUpInside)
        
        self.chatView.buttonThree.addTarget(self, action: #selector(thirdOpti), for: .touchUpInside)
        self.chatView.buttonFour.addTarget(self, action: #selector(forthOpti), for: .touchUpInside)
        self.chatView.buttonFive.addTarget(self, action: #selector(fifthOpti), for: .touchUpInside)
        self.chatView.buttonSix.addTarget(self, action: #selector(sixthOpti), for: .touchUpInside)
        
        self.chatView.buttonSeven.addTarget(self, action: #selector(sevenOpti), for: .touchUpInside)
        self.chatView.buttonEight.addTarget(self, action: #selector(eightOpti), for: .touchUpInside)
        
        self.chatView.buttonNine.addTarget(self, action: #selector(nineOpti), for: .touchUpInside)
          
    }
    
    @objc private func firstOpti(_ Sender: UIButton){
        chatView.border.isHidden = true
        self.chatModel.append(contentsOf: ChatBrain.firstChatOption())
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (timer) in
            self.chatView.secondBorder.isHidden = false
            self.chatView.buttonFour.isHidden = false
            self.chatView.buttonFive.isHidden = false
            self.chatView.buttonSix.isHidden = false
        }
    }
    
    @objc private func secondOpti(){
        chatView.border.isHidden = true
        self.chatModel.append(contentsOf: ChatBrain.secondChatOption())
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (timer) in
            self.chatView.secondBorder.isHidden = false
            self.chatView.buttonFour.isHidden = false
            self.chatView.buttonFive.isHidden = false
            self.chatView.buttonSix.isHidden = false
        }
    }
    
    @objc private func thirdOpti(){
        chatView.secondBorder.isHidden = true
        self.chatModel.append(contentsOf: ChatBrain.thirdChatOption())
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (timer) in
            self.chatView.thirdBorder.isHidden = false
            self.chatView.buttonSeven.isHidden = false
            self.chatView.buttonEight.isHidden = false
        }
    }
    
    @objc private func forthOpti(){
        chatView.secondBorder.isHidden = true
        self.chatModel.append(contentsOf: ChatBrain.fourthChatOption())
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (timer) in
            self.chatView.thirdBorder.isHidden = false
            self.chatView.buttonSeven.isHidden = false
            self.chatView.buttonEight.isHidden = false
        }
    }
    
    @objc private func fifthOpti(){
        chatView.secondBorder.isHidden = true
        self.chatModel.append(contentsOf: ChatBrain.fifthChatOption())
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (timer) in
            self.chatView.thirdBorder.isHidden = false
            self.chatView.buttonSeven.isHidden = false
            self.chatView.buttonEight.isHidden = false
        }
    }
    
    @objc private func sixthOpti(){
        chatView.secondBorder.isHidden = true
        self.chatModel.append(contentsOf: ChatBrain.sixthChatOption())
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (timer) in
            self.chatView.thirdBorder.isHidden = false
            self.chatView.buttonSeven.isHidden = false
            self.chatView.buttonEight.isHidden = false
        }
    }
    
    @objc private func sevenOpti(){
        chatView.thirdBorder.isHidden = true
        self.chatModel.append(contentsOf: ChatBrain.seventhChatOption())
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 4.0, repeats: false) { (timer) in
            self.chatView.forthBorder.isHidden = false
            self.chatView.buttonNine.isHidden = false
        }
    }
    
    @objc private func eightOpti(){
        // Skip to next Screen
    }
    
    @objc private func nineOpti(){
        // Skip to next Screen
    }
}

extension ChatController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.chatModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ChatTableViewCell
        
        cell.configureCell(chatModel: self.chatModel[indexPath.row])
        return cell
    }
}







