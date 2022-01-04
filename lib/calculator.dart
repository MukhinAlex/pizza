import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
  var _cost = 0;
  var _dough = 0;
  var _sizePrice = 200;
  var _sousPrice = 0;
  var _cheesePrice = 0;

  ButtonStyle? pressStyleU = ElevatedButton.styleFrom(
    primary: const Color(0xFF0079D0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(36.0),
    ),
  );

  ButtonStyle? pressStyleT = ElevatedButton.styleFrom(
    primary: const Color(0xFFeceff1),
    onPrimary: const Color.fromRGBO(0, 0, 0, 0.4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(36.0),
    ),
  );

  ButtonStyle? pressStyleS = ElevatedButton.styleFrom(
    primary: const Color(0xFF0079D0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(36.0),
    ),
  );
  ButtonStyle? pressStyleM = ElevatedButton.styleFrom(
    primary: const Color(0xFFeceff1),
    onPrimary: const Color.fromRGBO(0, 0, 0, 0.4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(36.0),
    ),
  );
  ButtonStyle? pressStyleL = ElevatedButton.styleFrom(
    primary: const Color(0xFFeceff1),
    onPrimary: const Color.fromRGBO(0, 0, 0, 0.4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(36.0),
    ),
  );

  ButtonStyle? offPressStyle = ElevatedButton.styleFrom(
    primary: const Color(0xFFeceff1),
    onPrimary: const Color.fromRGBO(0, 0, 0, 0.4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(36.0),
    ),
  );

  ButtonStyle? onPressStyle = ElevatedButton.styleFrom(
    primary: const Color(0xFF0079D0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(36.0),
    ),
  );
  void _onChangeDoughU(){
    setState(() {
      _cost = _dough+_sizePrice+_sousPrice+_cheesePrice;
      pressStyleU = onPressStyle;
      pressStyleT = offPressStyle;
    });
  }
  void _onChangeDoughT(){
    setState(() {
      _dough = -50;
      _cost = _sizePrice+_sousPrice+_cheesePrice+_dough;
      pressStyleT = onPressStyle;
      pressStyleU = offPressStyle;
    });
  }

  void _onCheckedChange(bool? val){
    setState(() {
      _checked = !_checked;
      if(_checked==true)
      {
        _cheesePrice = 50;
      }else{
        _cheesePrice = 0;
      }
        _cost = _sizePrice+_sousPrice+_cheesePrice+_dough;
    });
  }
  void _onChangeSmall(){
    setState(() {
      _sizePrice = 200;
      _cost = _sizePrice+_sousPrice+_cheesePrice+_dough;
       pressStyleS = onPressStyle;
       pressStyleM = offPressStyle;
       pressStyleL = offPressStyle;
    });
  }

  void _onChangeMid(){
    setState(() {
      _sizePrice = 350;
      _cost = _sizePrice+_sousPrice+_cheesePrice+_dough;
       pressStyleM = onPressStyle;
       pressStyleS = offPressStyle;
       pressStyleL = offPressStyle;
    });
  }
  void _onChangeLarge(){
    setState(() {
      _sizePrice = 550;
      _cost = _sizePrice+_sousPrice+_cheesePrice+_dough;
       pressStyleL = onPressStyle;
       pressStyleS = offPressStyle;
       pressStyleM = offPressStyle;
    });
  }
  
  void _onSousLevelChanged(SousLevel? value) {
    setState(() {
      _sousLevel = value;
      if(_sousLevel == SousLevel.hot) _sousPrice=10;
      if(_sousLevel == SousLevel.sweet) _sousPrice=15;
      if(_sousLevel == SousLevel.cheese) _sousPrice=10;
      _cost = _sizePrice+_sousPrice+_cheesePrice+_dough;
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
              const Align(alignment: Alignment.topRight,child: SizedBox(width: 232, height: 123, child: Image(image: AssetImage('assets/pizza.png'),),)),
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
                  ElevatedButton(onPressed: _onChangeDoughU,
                    child: const Text('Обычное тесто'),
                    style: pressStyleU,
                  ),
                  ),
                  SizedBox(width: 150, height: 34, child:
                  ElevatedButton(onPressed: _onChangeDoughT,
                    child: const Text('Тонкое тесто'),
                    style: pressStyleT,
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
                  ElevatedButton(onPressed: _onChangeSmall,
                    child: const Text('25 см'),
                    style: pressStyleS,
                  ),
                  ),
                  SizedBox(width: 100, height: 25, child:
                  ElevatedButton(onPressed: _onChangeMid,
                    child: const Text('30 см'),
                    style: pressStyleM,
                  ),
                  ),
                  SizedBox(width: 100, height: 25, child:
                  ElevatedButton(onPressed: _onChangeLarge,
                    child: const Text('42 см'),
                    style: pressStyleL,
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
              SizedBox(width: 300, height: 34,
                child: ElevatedButton(onPressed: () {},
                  child:  Text('$_cost руб.', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFeceff1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.0),
                    ),
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

