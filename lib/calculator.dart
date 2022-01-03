import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
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
            width: double.infinity,
            child: Column(children: [
              const SizedBox(height: 60,),
              const SizedBox(width: 232, height: 123, child: Image(image: AssetImage('assets/pizza.png'),),),
              const SizedBox(height: 33,),
              const Text('Калькулятор пиццы',
                style: TextStyle(fontSize: 30, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              const SizedBox(height: 8,),
              const Text('Выберите параметры',
                style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              const SizedBox(height: 33,),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 150, height: 34, child:
                  ElevatedButton(onPressed: () {},
                    child: Text('Обычное тесто'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0079D0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(width: 150, height: 34, child:
                  ElevatedButton(onPressed: () {},
                    child: Text('Тонкое тесто'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Color.fromRGBO(0, 0, 0, 0.4),
                      primary: Color(0xFFeceff1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 19,),
              const Text('Размер:',
                style: TextStyle(fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.6)),),

              const Text('Соус:',
                style: TextStyle(fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              SizedBox(width: 154, height: 42, child:
              ElevatedButton(onPressed: () {},
                child: Text('Войти'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0079D0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                ),
              ),
              ),
              SizedBox(height: 62,),
              InkWell(child: const Text('Регистрация', style: linkTextStyle,),
                  onTap: () {}),
              SizedBox(height: 20,),
              InkWell(child: const Text('Забыли пароль', style: linkTextStyle,),
                  onTap: () {}),
            ],),
          )
      ),
    );
  }
}
