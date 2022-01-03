import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}
enum SousLevel {hot, sweet, cheese}


class _CalculatorScreenState extends State<CalculatorScreen> {
  bool _checked = false;
  SousLevel? _sousLevel = SousLevel.hot;

  void _onCheckedChange(bool? val){
    setState(() {
      _checked = !_checked;
    });
  }
  
  void _onSousLevelChanged(SousLevel? value) {
    setState(() {
      _sousLevel = value;
    });
  }

  @override
  Widget build(BuildContext context) {

    const borderStyle2 = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: Color(0xFFeceff1), width: 2));

    return MaterialApp(
      home: Scaffold(
          body: SizedBox(
            width: double.infinity,
            child: Column(children: [
              const SizedBox(height: 60,),
              const SizedBox(width: 232, height: 123, child: Image(image: AssetImage('assets/pizza.png'),),),
              const SizedBox(height: 20,),
              const Text('Калькулятор пиццы',
                style: TextStyle(fontSize: 30, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              const SizedBox(height: 8,),
              const Text('Выберите параметры',
                style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              const SizedBox(height: 20,),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 150, height: 34, child:
                  ElevatedButton(onPressed: () {},
                    child: const Text('Обычное тесто'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF0079D0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(width: 150, height: 34, child:
                  ElevatedButton(onPressed: () {},
                    child: const Text('Тонкое тесто'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: const Color.fromRGBO(0, 0, 0, 0.4),
                      primary: const Color(0xFFeceff1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Text('Размер:',
                style: TextStyle(fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              const SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 100, height: 25, child:
                  ElevatedButton(onPressed: () {},
                    child: const Text('25 см'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF0079D0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(width: 100, height: 25, child:
                  ElevatedButton(onPressed: () {},
                    child: const Text('30 см'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: const Color.fromRGBO(0, 0, 0, 0.4),
                      primary: const Color(0xFFeceff1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(width: 100, height: 25, child:
                  ElevatedButton(onPressed: () {},
                    child: const Text('42 см'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: const Color.fromRGBO(0, 0, 0, 0.4),
                      primary: const Color(0xFFeceff1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Text('Соус:',
                style: TextStyle(fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              RadioListTile(
                  title: const Text('Острый'),
                  value: SousLevel.hot,
                  groupValue: _sousLevel,
                  onChanged: _onSousLevelChanged),
              const SizedBox(width: 320,
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Color.fromRGBO(240, 240, 240, 1),
                ),
              ),
              RadioListTile(
                  title: const Text('Кисло-сладкий'),
                  value: SousLevel.sweet,
                  groupValue: _sousLevel,
                  onChanged: _onSousLevelChanged),
              const SizedBox(width: 320,
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Color.fromRGBO(240, 240, 240, 1),
                ),
              ),
              RadioListTile(
                  title: const Text('Сырный'),
                  value: SousLevel.cheese,
                  groupValue: _sousLevel,
                  onChanged: _onSousLevelChanged),
              SizedBox(width: 310, height: 56,
                child: SwitchListTile(
                  tileColor: const Color.fromRGBO(240, 240, 240, 1),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                  title: const Text('Дополнительный сыр'),
                  value: _checked,
                  onChanged: _onCheckedChange,
                  secondary: const Image(width: 36, height:34, image: AssetImage('assets/cheese.png')),
                ),
              ),
              const SizedBox(height: 10,),
              const Text('Стоимость:',
                style: TextStyle(fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              const SizedBox(height: 10,),
              const SizedBox(width: 300, height: 34,
                child: TextField(
                  decoration: InputDecoration(
                    filled:true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle2,
                    focusedBorder: borderStyle2,
                    labelText: '',
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(width: 154, height: 42, child:
              ElevatedButton(onPressed: () {},
                child: const Text('Заказать'),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF0079D0),
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
