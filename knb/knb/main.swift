//
//  main.swift
//  knb
//
//  Created by ibaikaa on 16/12/22.
//

import Foundation



var choices = ["камень", "ножницы", "бумага"]
var playerVictories = 0
var botVictories = 0

while true {
    
    print("Введите (камень, ножницы, бумага). Для выхода введите \"выход\"")
    let player = readLine()!
    
    let bot = choices.randomElement()!
    
    if player == "выход" {
        break
    }
    
    
    if player == bot {
        print("Вы выбрали – \(player), бот выбрал - \(bot). Ничья!. Текущий счёт: Вы: \(playerVictories):\(botVictories) Бот.")
    } else if (bot == "камень" && player == "ножницы") || (bot == "ножницы" && player == "бумага") || (bot == "бумага" && player == "камень") {
        botVictories += 1
        print("Вы выбрали – \(player), бот выбрал - \(bot). Бот выиграл!Текущий счёт: Вы: \(playerVictories):\(botVictories) Бот.")
    } else if (player == "камень" && bot == "ножницы") || (player == "ножницы" && bot == "бумага") || (player == "бумага" && bot == "камень") {
        playerVictories += 1
        print("Вы выбрали – \(player), бот выбрал - \(bot). Вы выиграли! Текущий счёт: Вы: \(playerVictories):\(botVictories) Бот.")
    } else {
        print("Неправильная команда!")
    }
    
}

