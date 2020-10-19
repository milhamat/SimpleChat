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
    
    var list = ["Hallo", "Apa Kabar", "Kamu Baik Hari ini ?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.chatView = ChatView(frame: self.view.frame)
        self.view = self.chatView
        
        self.chatView.chatTable.delegate = self
        self.chatView.chatTable.dataSource = self
        
        self.chatView.chatTable.separatorStyle = .none
        
        self.title = "YANA"
        
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
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
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
    
    @objc private func firstOpti(){
        chatView.border.isHidden = true
        list += ["Alhamdulillah Baik","Wah bagus","Bagaimana keadaan mu?"]
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
            self.chatView.secondBorder.isHidden = false
            self.chatView.buttonFour.isHidden = false
            self.chatView.buttonFive.isHidden = false
            self.chatView.buttonSix.isHidden = false
        }
    }
    
    @objc private func secondOpti(){
        chatView.border.isHidden = true
        list += ["Buruk 🙁","Mohon maaf sebelumnya","dan Bagaimana keadaan mu?"]
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
            self.chatView.secondBorder.isHidden = false
            self.chatView.buttonFour.isHidden = false
            self.chatView.buttonFive.isHidden = false
            self.chatView.buttonSix.isHidden = false
        }
    }
    
    @objc private func thirdOpti(){
        chatView.secondBorder.isHidden = true
        list += ["entah lah, aku merasa sedih",
                 "terimakasih sudah bertahan",
                 "Tetaplah berjuang, karena Kami ada di sini"]
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
            self.chatView.thirdBorder.isHidden = false
            self.chatView.buttonSeven.isHidden = false
            self.chatView.buttonEight.isHidden = false
        }
    }
    
    @objc private func forthOpti(){
        chatView.secondBorder.isHidden = true
        list += ["entah lah, aku merasa kecewa",
                 "terimakasih sudah bertahan",
                 "Tetaplah berjuang, karena Kami ada di sini"]
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
            self.chatView.thirdBorder.isHidden = false
            self.chatView.buttonSeven.isHidden = false
            self.chatView.buttonEight.isHidden = false
        }
    }
    
    @objc private func fifthOpti(){
        chatView.secondBorder.isHidden = true
        list += ["entah lah, aku ingin melukai diri sendiri",
                 "terimakasih sudah bertahan",
                 "Tetaplah berjuang, karena Kami ada di sini"]
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
            self.chatView.thirdBorder.isHidden = false
            self.chatView.buttonSeven.isHidden = false
            self.chatView.buttonEight.isHidden = false
        }
    }
    
    @objc private func sixthOpti(){
        chatView.secondBorder.isHidden = true
        list += ["entah lah, aku merasa hampa",
                 "terimakasih sudah bertahan",
                 "Tetaplah berjuang, karena Kami ada di sini"]
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
            self.chatView.thirdBorder.isHidden = false
            self.chatView.buttonSeven.isHidden = false
            self.chatView.buttonEight.isHidden = false
        }
    }
    
    @objc private func sevenOpti(){
        chatView.thirdBorder.isHidden = true
        list += ["test","Kami tau hidupmu berat","yuk kita masuk ke dalam"]
        chatView.chatTable.reloadData()
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
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
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let num = indexPath.row
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
            cell.textLabel?.text = self.list[num]
        }
        
        if num == 3 {
            cell.textLabel?.textAlignment = .right
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
                cell.textLabel?.text = self.list[3]
            }
        }
        if num == 6 {
            cell.textLabel?.textAlignment = .right
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
                cell.textLabel?.text = self.list[6]
            }
        }
        if num == 9 {
            cell.textLabel?.textAlignment = .right
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
                cell.textLabel?.text = self.list[9]
            }
        }
        return cell
    }
}









//        if num == 4 {
//            cell.textLabel?.textAlignment = .left
//            cell.textLabel?.text = list[4]
//        }
//        if num == 5 {
//            cell.textLabel?.textAlignment = .left
//            cell.textLabel?.text = list[5]
//        }

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
