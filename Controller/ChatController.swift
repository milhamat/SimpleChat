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
    
    var list = ["hai","hai"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if chatBrain.chatArray[0].person .isEmpty{
            for i in 0...1 {
                print(chatBrain.chatArray[i].bot)
            }
        }
        if chatBrain.chatArray[2].bot .isEmpty {
            print(chatBrain.chatArray[2].person)
        }
        
        self.chatView = ChatView(frame: self.view.frame)
        self.view = self.chatView
        
        self.chatView.chatTable.delegate = self
        self.chatView.chatTable.dataSource = self
        
        self.chatView.chatTable.separatorStyle = .none
        
        self.title = "YANA"
    }

}

extension ChatController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.textAlignment = .right
        cell.textLabel?.text = list[indexPath.row]
        //print(list.count)// <-
       
        if list.count == 2 {
            //print(list.count)// <-
            cell.textLabel?.textAlignment = .left
            list.append("apa kabar 👋😊")
            //print(list)// <-
            cell.textLabel?.text = list[indexPath.row]
        }
        
        return cell
    }
    
    
}
