//
//  ViewController.swift
//  SimpleChat
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 14/10/20.
//

import UIKit

class ChatController: UIViewController {
    
    private var chatView: ChatView!
    private var chatBrain = ChatBrain()
    
    var list = ["Hai", "Apa kabar", "Kamu Baik Hari ini ?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.chatView = ChatView(frame: self.view.frame)
        self.view = self.chatView
        
        self.chatView.chatTable.delegate = self
        self.chatView.chatTable.dataSource = self
        
        self.chatView.chatTable.separatorStyle = .none
        
        self.title = "YANA"
        
        self.chatView.border.isHidden = true
        
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { (timer) in
            self.chatView.border.isHidden = false
        }
        
        self.chatView.firstButton.addTarget(self, action: #selector(firstOpti), for: .touchUpInside)
        self.chatView.secondButton.addTarget(self, action: #selector(secondOpti), for: .touchUpInside)
    }
    
    @objc private func firstOpti(){
        chatView.border.isHidden = true
        list += ["Alhamdulillah Baik"]
        
        DispatchQueue.main.async {
            self.chatView.chatTable.reloadData()
        }
        print(list)
    }
    
    @objc private func secondOpti(){
        chatView.border.isHidden = true
        list += ["Buruk Bangsat!"]
        
        DispatchQueue.main.async {
            self.chatView.chatTable.reloadData()
        }
        print(list)
    }
}

extension ChatController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.list[indexPath.row]
        return cell
    }
}











//        cell.textLabel?.textAlignment = .right
//        cell.textLabel?.text = list[indexPath.row]
//
//        if list.count == 2 {
//            list.append("apa kabar 👋😊")
//            cell.textLabel?.textAlignment = .left
//            cell.textLabel?.text = list[indexPath.row]
//        }


//        for i in 0...2{
//            if chatBrain.chatArray[i].bot != "" && chatBrain.chatArray[i].person .isEmpty{
//                print(chatBrain.chatArray[i].bot)
//            }
//            if chatBrain.chatArray[i].bot .isEmpty && chatBrain.chatArray[i].person != "" {
//                print(chatBrain.chatArray[i].person)
//            }
//        }

//        for i in 0...2 {
//            var a = 0
//            a = i
//            print("\(a)")
//        }

//for index in stride(from: 2, to: 0, by: -1) {
//}


//for _ in 0...2 {
////        chatBrain.nextString()
//    var num = 0.0
//    Timer.scheduledTimer(withTimeInterval: 0.1 * num ,repeats: false) { (timer) in
//        self.chatBrain.count += 1
//        cell.textLabel?.text = self.chatBrain.getString()
//    }
//    num += 1
//}
