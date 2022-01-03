import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Registration());
}

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: const Color(0xFFeceff1), width: 2));
    const linkTextStyle = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0079D0));

    return MaterialApp(
      home: Scaffold(
          body: Container(
            padding: EdgeInsets.all(30),
            width: double.infinity,
            child: Column(
              children: [
              SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container (
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color.fromRGBO(92, 92, 92, 1),),
                    ),
                    child: Icon(Icons.people_rounded, size: 20,),
                  ),
                  Text('  Регистрация',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Color.fromRGBO(0, 0, 0, 0.6)), ),
                ],
              ),
              SizedBox(height: 15,),
              const SizedBox(width: 300,
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16,),
              const SizedBox(
                width: 300,
                child: Text('Чтобы зарегистрироваться введите свой номер телефона и почту',
                  style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)), textAlign: TextAlign.center,),
              ),
              SizedBox(height: 20,),
              const Text('Телефон',
                style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              SizedBox(height: 6,),
              const SizedBox(width: 244, height: 34,
                child: TextField(
                  decoration: InputDecoration(
                    filled:true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: '+7',
                  ),
                ),
              ),
              SizedBox(height: 14,),
              const Text('Почта',
                style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              SizedBox(height: 6,),
              const SizedBox(width: 244, height: 34,
                child: TextField(
                  decoration: InputDecoration(
                    filled:true,
                    fillColor: Color(0xffeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: '',
                  ),
                ),
              ),
              SizedBox(height: 24,),
              const SizedBox(
                width: 300,
                child: Text('Вам придет четырехзначный код, который будет вашим паролем',
                  style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)), textAlign: TextAlign.center,),
              ),
              SizedBox(height: 14,),
              const SizedBox(
                width: 300,
                child: Text('Изменить пароль можно будет в личном кабинете после регистрации',
                  style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)), textAlign: TextAlign.center,),
              ),
              SizedBox(height: 32,),
              SizedBox(width: 154, height: 42, child:
              ElevatedButton(onPressed: () {},
                child: Text('Отправить код'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0079D0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                ),
              ),
              ),
            ],),
          )
      ),
    );
  }
}

