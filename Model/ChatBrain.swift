//
//  ChatBrain.swift
//  SimpleChat
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 15/10/20.
//

import Foundation

struct ChatBrain {
    let chatArray = [
        Chat(bot: "Hai", person: ""),
        Chat(bot: "Apa Kabar", person: ""),
        Chat(bot: "", person: "Baik ")
    ]
    
    func getString() -> String{
        var chat = ""
        for i in 0...2{
            if chatArray[i].bot != "" && chatArray[i].person .isEmpty{
                chat = chatArray[i].bot
            }
            if chatArray[i].bot .isEmpty && chatArray[i].person != "" {
                chat = chatArray[i].person
            }
        }
        return chat
    }

}

//if chatBrain.chatArray[0].person .isEmpty{
//    for i in 0...1 {
//        print(chatBrain.chatArray[i].bot)
//    }
//}
//if chatBrain.chatArray[2].bot .isEmpty {
//    print(chatBrain.chatArray[2].person)
//}
