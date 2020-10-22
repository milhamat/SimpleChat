//
//  Chat.swift
//  SimpleChat
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 15/10/20.
//

import Foundation

struct ChatModel {
    let message: String
    let sender: Sender
    let isTyping: Bool
    let timeInterval: TimeInterval
}

enum Sender {
    case bot
    case user
}
