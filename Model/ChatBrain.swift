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
        let chat1 = ChatModel(message: "Selamat datang Mipan Zuzuzu 😊", sender: .bot, isTyping: true, timeInterval: 0)
        messages.append(chat1)
        
        let chat2 = ChatModel(message: "Bagaimana perasaanmu saat ini?", sender: .bot, isTyping: true, timeInterval: 1)
        messages.append(chat2)
        
        return messages
    }
    
    static func firstChatOption() -> [ChatModel]{
        var messages = [ChatModel]()
        let chat1 = ChatModel(message: "Selamat siang Yana, kabarku baik.", sender: .user, isTyping: false, timeInterval: 0)
        messages.append(chat1)
        
        let chat2 = ChatModel(message: "Wah Bagus", sender: .bot, isTyping: true, timeInterval: 1)
        messages.append(chat2)
        
        let chat3 = ChatModel(message: "Bagaimana perasaanmu saat ini?", sender: .bot, isTyping: true, timeInterval: 2)
        messages.append(chat3)
        return messages
    }
    
    static func secondChatOption() -> [ChatModel]{
        var messages = [ChatModel]()
        let chat1 = ChatModel(message: "Selamat siang Yana, kabarku buruk.", sender: .user, isTyping: false, timeInterval: 0)
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
        
        let chat2 = ChatModel(message: "Kami tahu beban yang kau alami berat.", sender: .bot, isTyping: true, timeInterval: 1)
        messages.append(chat2)
        
        let chat3 = ChatModel(message: "Kami tau ini berat tapi tolong tetaplah berjuang", sender: .bot, isTyping: true, timeInterval: 2)
        messages.append(chat3)
        
        let chat4 = ChatModel(message: "Yuk kita masuk lebih dalam", sender: .bot, isTyping: true, timeInterval: 3)
        messages.append(chat4)
        return messages
    }
}

//
