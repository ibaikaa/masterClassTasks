print("Регистрация")

print("Введите свой никнейм: ")
var username = readLine()!

print("Введите имя: ")
let name = readLine()!

print("Введите фамилию: ")
let surname = readLine()!

var gmail = ""

while true {
  print("Введите свою почту gmail")
  gmail = readLine()!
  
  if gmail.suffix(9) != "gmail.com" {
    print("введите почту @gmail.com! ")
  } else {
    break
  }
}

var phoneNumber = ""

while true {

  print("Введите свой номер телефона: ")
  phoneNumber = readLine()!

  if let _ = Int(phoneNumber) {
    break
  } else {
    print("Номер телефона должен содержать лишь цифры!")
  }

}


var password = ""

while true {
  print("Придумайте пароль")
  password = readLine()!

  print("Подтвердите пароль")
  let confirm = readLine()!

  if password == confirm {
    break
  } else {
    print("Пароли должны совпадать!")
  }

}

let user = [
  "username": username,
  "name": name,
  "surname": surname,
  "gmail": gmail,
  "password": password,
]

print("User data is: ")
for (id, pair) in user.enumerated () {
  print("ID:\(id), Key: \(pair.key), Value: \(pair.value)")
}

print("Авторизация")

while true {
  print("Введите свой никнейм: ")
  username = readLine()!

  print("Введите пароль: ")
  password = readLine()!


  if username != user["username"]! || password != user["password"]! {
    print("Неверный логин или пароль! Попробуйте еще раз.")
  } else {
    print("Успешный вход!")
    break
  }
}


