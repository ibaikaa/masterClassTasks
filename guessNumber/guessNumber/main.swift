print("Добро пожаловать в игру \"Угадай число\"! Постарайтесь угадать число от 1 до 50 за минимальное количество попыток. Мы будем вам подсказывать, после каждого вашего предложенного числа, больше ли загаданное число чем вами предложенное, или же меньше.")
print("Введите, сколько попыток вам необходимо дать, чтоб отгадать число?")

var tries = Int(readLine()!)!


let number = Int.random(in: 1...50)

var userTries = 0
while userTries != tries  {
    print("Введите предполагаемое вами число: ")
    let guess = Int(readLine()!)!
    
    userTries += 1
    
    if guess > number {
        print("Меньше!")
    } else if guess < number {
        print("Больше!")
    } else {
        print("Поздравляю. Вы отгадали число! На это вам понадобилось \(userTries) попыток. Неплохо!")
        break
    }
    
    if userTries == tries {
        print("Загаданное число было: \(number). Удачи вам в следующий раз!")
        break
    }
}


