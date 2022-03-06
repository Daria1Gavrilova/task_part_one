import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: const Color(0xFF49D7E0), width: 3));
    const linkTextStyle = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF)
    );

    return MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/back.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            child: Column(children: [
              SizedBox(height: 100,),
              const SizedBox(width: 110, height: 84, child: Image(image: AssetImage('assets/dart-logo.png')),),
              SizedBox(height: 30,),
              const SizedBox(width: 260,
                  child: Text('Введите логин в виде 10 цифр номера телефона',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromRGBO(225, 225, 225, 1)),),),
              SizedBox(height: 30,),
              const SizedBox(width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Ваш номер',
                  ),
                ),
              ),
              SizedBox(height: 20,),
              const SizedBox(width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Пароль',
                  ),
                ),
              ),
              SizedBox(height: 28,),
              SizedBox(width: 154, height: 42, child:
              ElevatedButton(onPressed: () {},
                child: Text('Войти'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF49D7E0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                ),
              )
              ),
              SizedBox(height: 32,),
              InkWell(child: const Text('Регистрация', style: linkTextStyle,),
                  onTap: () {}),
              SizedBox(height: 20,),
              InkWell(child: Text('Забыли пароль?', style: linkTextStyle,), onTap: () {})

            ],),
          )
      ),
    );
  }
}