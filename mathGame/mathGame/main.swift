print("Проверим ваши знания таблицы умножения? Постарайтесь решить максимальное количество примеров правильно.")

    print("Введите номер сложности! \n1.Третий класс. \n2.Можно посчитать в уме (надеюсь).\n3.Кажется, нужен калькулятор.\n4.Высш.мат")
var difficulty = Int(readLine()!)!
while true {
  if difficulty > 4 || difficulty < 1 {
    print("Введите номер сложности! \n1.Третий класс. \n2.Можно посчитать в уме (надеюсь).\n3.Кажется, нужен калькулятор.\n4.Высш.мат")
    difficulty = Int(readLine()!)!
  } else {
    break
  }
}


print("Сколько примеров вам задать?")
var tasks = Int(readLine()!)!
var maxRate = tasks


var correctAnswers = 0

while tasks != 0 {
  var a = 0
  var b = 0
  
  if difficulty == 1 {
    a = Int.random(in: 0...9)
    b =  Int.random(in: 0...9)
  } else if difficulty == 2 {
    a =  Int.random(in: 10...50)
    b =  Int.random(in: 10...50)
  } else if difficulty == 3 {
    a =  Int.random(in: 51...100)
    b =  Int.random(in: 51...100)
  } else if difficulty == 4 {
    a =  Int.random(in: 101...200)
    b =  Int.random(in: 101...200)
  }


  print("\(a) * \(b) = ? ")
  let answer = Int(readLine()!)!
  

  if answer == a * b {
    correctAnswers += 1
    print("Правильно! \(correctAnswers) из \(maxRate) баллов.")
  } else {
    print("Неправильно! Правильный ответ: \(a * b)")
  }

  tasks -= 1

  if tasks != 0 {
      print("Количество оставшихся примеров: \(tasks).")
  } else {
    print("Ожидайте результаты...")
}
  
}

if correctAnswers == maxRate {
  print("\(correctAnswers) из \(maxRate) баллов. Идеально!")
} else if (maxRate - correctAnswers < 3) {
  print("\(correctAnswers) из \(maxRate) баллов. Неплохо!")
} else if (maxRate - correctAnswers >= 3 ) {
print("\(correctAnswers) из \(maxRate) баллов. Надо бы еще попрактиковаться!")
}
