//
//  ChatBrain.swift
//  SimpleChat
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 15/10/20.
//

import Foundation

class ChatBrain {
    static func openingChat() -> [ChatModel]{
        var messages = [ChatModel]()
        let chat1 = ChatModel(message: "Hallo", sender: .bot, isTyping: true, timeInterval: 0)
        messages.append(chat1)
        
        let chat2 = ChatModel(message: "Apa Kabar", sender: .bot, isTyping: true, timeInterval: 1)
        messages.append(chat2)
        
        let chat3 = ChatModel(message: "Kamu Baik Hari Ini ?", sender: .bot, isTyping: true, timeInterval: 2)
        messages.append(chat3)
        return messages
    }
    
    static func firstChatOption() -> [ChatModel]{
        var messages = [ChatModel]()
        let chat1 = ChatModel(message: "Baik", sender: .user, isTyping: false, timeInterval: 0)
        messages.append(chat1)
        
        let chat2 = ChatModel(message: "Wah Bagus", sender: .bot, isTyping: true, timeInterval: 1)
        messages.append(chat2)
        
        let chat3 = ChatModel(message: "Bagaimana keadaan mu?", sender: .bot, isTyping: true, timeInterval: 2)
        messages.append(chat3)
        return messages
    }
    
    static func secondChatOption() -> [ChatModel]{
        var messages = [ChatModel]()
        let chat1 = ChatModel(message: "Buruk", sender: .user, isTyping: false, timeInterval: 0)
        messages.append(chat1)
        
        let chat2 = ChatModel(message: "Mohon Maaf Sebelumnya", sender: .bot, isTyping: true, timeInterval: 1)
        messages.append(chat2)
        
        let chat3 = ChatModel(message: "dan Bagaimana keadaan mu?", sender: .bot, isTyping: true, timeInterval: 2)
        messages.append(chat3)
        return messages
    }
    
    static func thirdChatOption() -> [ChatModel]{
        var messages = [ChatModel]()
        let chat1 = ChatModel(message: "Entah lah, aku merasa sedih", sender: .user, isTyping: false, timeInterval: 0)
        messages.append(chat1)
        
        let chat2 = ChatModel(message: "Terimakasih sudah bertahan", sender: .bot, isTyping: true, timeInterval: 1)
        messages.append(chat2)
        
        let chat3 = ChatModel(message: "Tetaplah berjuang, karena kami ada disini", sender: .bot, isTyping: true, timeInterval: 2)
        messages.append(chat3)
        return messages
    }
    
    static func fourthChatOption() -> [ChatModel]{
        var messages = [ChatModel]()
        let chat1 = ChatModel(message: "Entah lah, aku merasa kecewa", sender: .user, isTyping: false, timeInterval: 0)
        messages.append(chat1)
        
        let chat2 = ChatModel(message: "Terimakasih sudah bertahan", sender: .bot, isTyping: true, timeInterval: 1)
        messages.append(chat2)
        
        let chat3 = ChatModel(message: "Tetaplah berjuang, karena kami ada disini", sender: .bot, isTyping: true, timeInterval: 2)
        messages.append(chat3)
        return messages
    }
    
    static func fifthChatOption() -> [ChatModel]{
        var messages = [ChatModel]()
        let chat1 = ChatModel(message: "Entah lah, aku ingin melukai diri sendiri", sender: .user, isTyping: false, timeInterval: 0)
        messages.append(chat1)
        
        let chat2 = ChatModel(message: "Terimakasih sudah bertahan", sender: .bot, isTyping: true, timeInterval: 1)
        messages.append(chat2)
        
        let chat3 = ChatModel(message: "Tetaplah berjuang, karena kami ada disini", sender: .bot, isTyping: true, timeInterval: 2)
        messages.append(chat3)
        return messages
    }
    
    static func sixthChatOption() -> [ChatModel]{
        var messages = [ChatModel]()
        let chat1 = ChatModel(message: "Entah lah, aku merasa hampa", sender: .user, isTyping: false, timeInterval: 0)
        messages.append(chat1)
        
        let chat2 = ChatModel(message: "Terimakasih sudah bertahan", sender: .bot, isTyping: true, timeInterval: 1)
        messages.append(chat2)
        
        let chat3 = ChatModel(message: "Tetaplah berjuang, karena kami ada disini", sender: .bot, isTyping: true, timeInterval: 2)
        messages.append(chat3)
        return messages
    }
    
    static func seventhChatOption() -> [ChatModel]{
        var messages = [ChatModel]()
        let chat1 = ChatModel(message: "Terimakasih YANA", sender: .user, isTyping: false, timeInterval: 0)
        messages.append(chat1)
        
        let chat2 = ChatModel(message: "Kami tau hidupmu berat", sender: .bot, isTyping: true, timeInterval: 1)
        messages.append(chat2)
        
        let chat3 = ChatModel(message: "Yuk kita masuk lebih dalam", sender: .bot, isTyping: true, timeInterval: 2)
        messages.append(chat3)
        return messages
    }
}


















//    var chatArray = [
//        ChatModel(bot: "Hai", person: ""),
//        ChatModel(bot: "Apa Kabar", person: ""),
//        ChatModel(bot: "Aku", person: "Baik ")
//    ]
    
//    var count = -1
//
//    func getString() -> String {
//        let next = chatArray[count].bot
//        return next
//    }

//    mutating func nextString() {
//            count += 1
//    }

//func countDownToZero(num: Int) {
//    print(num)
//    if num > 0 {
//        countDownToZero(num: num - 1)
//    }
//}


//    func getString() -> String{
//        var chat = ""
//        for i in 0...2{
//            if chatArray[i].bot != "" && chatArray[i].person .isEmpty{
//                chat = chatArray[i].bot
//            }
//            if chatArray[i].bot .isEmpty && chatArray[i].person != "" {
//                chat = chatArray[i].person
//            }
//        }
//        return chat
//    }



//if chatBrain.chatArray[0].person .isEmpty{
//    for i in 0...1 {
//        print(chatBrain.chatArray[i].bot)
//    }
//}
//if chatBrain.chatArray[2].bot .isEmpty {
//    print(chatBrain.chatArray[2].person)
//}
