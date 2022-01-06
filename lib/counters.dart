import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

class SharedPrefScreen extends StatelessWidget {
  const SharedPrefScreen({Key? key}) : super(key: key);

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Две кнопки',
      home: MyHomePage(storage: CounterStorage()),
    );
  }
}

class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<int> readCounter() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      return int.parse(contents);
    } catch (e) {
      // If encountering an error, return 0
      return 0;
    }
  }

  Future<File> writeCounter(int counterTwo) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString('$counterTwo');
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.storage}) : super(key: key);

  final CounterStorage storage;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterOne = 0;
  int _counterTwo = 0;
  String _login = "Неизвестный1";

  void _loadLogin() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _login = (prefs.getString('login') ?? "Unnamed");
    });
  }
  void _changeLogin(String text) async{
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _login = text;
      prefs.setString('login', text);
    });
  }


  @override
  void initState() {
    super.initState();
    _loadCounter();
    _loadLogin();
    widget.storage.readCounter().then((int value) {
      setState(() {
        _counterTwo = value;
      });
    });
  }

  //Loading counter value on start
  void _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counterOne = (prefs.getInt('counterOne') ?? 0);
    });
  }

  //Incrementing counter after click
  void _incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counterOne = (prefs.getInt('counterOne') ?? 0) + 1;
      prefs.setInt('counterOne', _counterOne);
    });
  }

  Future<File> _incrementCounterTwo() {
    setState(() {
      _counterTwo++;
    });

    // Write the variable as a string to the file.
    return widget.storage.writeCounter(_counterTwo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Две кнопки'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children:[
            Text("Здравствуйте, $_login!", style: const TextStyle(fontSize: 22)),
            SizedBox(width: 250, height: 40,
              child: TextField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 22),
                  onSubmitted: _changeLogin),
            )
          ],
        ),
            const SizedBox(height: 28,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 100, height: 42, child:
                  ElevatedButton(onPressed: _incrementCounter,
                    child: const Text('Левая'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(width: 100, height: 42, child:
                  ElevatedButton(onPressed: _incrementCounterTwo,
                    child: const Text('Правая'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            const SizedBox(height: 28,),
            const Text(
              'Тапов по левой кнопке:',
            ),
            Text(
              '$_counterOne',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 28,),
            const Text(
              'Тапов по правой кнопке:',
            ),
            Text(
              '$_counterTwo',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}