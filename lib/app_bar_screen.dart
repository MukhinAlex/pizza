import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return MaterialApp(
        scaffoldMessengerKey: _messengerKey,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Пицца-Ца'),
          actions: <Widget>[
            IconButton(
              tooltip: 'Мои заказы',
                onPressed: () {},
                icon: const Icon(Icons.account_balance)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
            TextButton(
                onPressed: () {},
                child: const Text('Профиль'),
                style: buttonStyle,
            )
          ]
        ),
          drawer:Drawer(
              child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Container(
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height : 100,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(50.0))
                              ),
                              child: const Image(image: AssetImage('assets/pizza.png')),
                            ),
                            const Text("Закажи пиццу прямо сейчас")
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('Наш каталог'),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.one_k),
                      title: const Text('Новинки'),
                      onTap: (){
                        _messengerKey.currentState!.showSnackBar(
                            const SnackBar(content: Text('Переход в каталог новинок')));
                      },
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.one_k),
                      title: const Text('Экзотика'),
                      onTap: (){
                        _messengerKey.currentState!.showSnackBar(
                            const SnackBar(content: Text('Переход в каталог экзотических пицц')));
                      },
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.one_k),
                      title: const Text('Популярное'),
                      onTap: (){
                        _messengerKey.currentState!.showSnackBar(
                            const SnackBar(content: Text('Переход к популярным пиццам')));
                      },
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.two_k),
                      title: const Text('Доставка'),
                      onTap: (){
                        _messengerKey.currentState!.showSnackBar(
                            const SnackBar(content: Text('Информация о доставке')));
                      },
                    ),
                    const Divider(),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('Профиль'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Настройки'),
                      onTap: (){
                        _messengerKey.currentState!.showSnackBar(
                            const SnackBar(content: Text('Переход в настройки')));
                      },
                    ),
                    const Divider(),
                  ],
              ),
          ),
        body: const Center(child: Text('Контент')),
      )
    );
  }
}
