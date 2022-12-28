import Foundation


print("Калькулятор")


while true {
  print("Введите первое число: ")
  let a = Double(readLine()!)!
  print("Введите операцию (+,-,*,/, degree):")
  let operation = readLine()!
  print("Введите второе число: ")
  let b = Double(readLine()!)!

  var answer: Double = 0

  switch operation {
    case "+": answer = a + b
    case "-": answer = a - b
    case "*": answer = a * b
    case "/":
    if b != 0 {
        answer = a / b
    } else {
      print("Нельзя делить на 0!")
      answer = 0
    }
    case "degree": answer = pow(a, b)
    default: print("Неизвестная операция!")
  }
  print(answer)

  print("Хотите продолжить? (да/нет)")
  let wish = readLine()!

  if wish == "да"{
    continue
  } else if wish == "нет" {
    break
  } else {
    print("Неизвестный ответ... сочтем за согласие, продолжим...")
  }
}
