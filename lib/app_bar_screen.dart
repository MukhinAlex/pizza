import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: const MainScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/contacts': (context) => const ContactScreen(),
        '/new': (context) => const NewScreen(),
        '/top': (context) => const TopScreen(),
        '/delivery': (context) => const DeliveryScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}

    Widget navDrawer(context) => Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: SizedBox(
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
                  const Text("Закажи пиццу прямо сейчас", style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_border),
            title: const Text('Главная'),
            onTap: (){
              Navigator.pushNamed(context, '/');
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text('Наш каталог'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.grade),
            title: const Text('Новинки'),
            onTap: (){
              Navigator.pushNamed(context, '/new');
              },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.verified),
            title: const Text('Популярное'),
            onTap: (){
              Navigator.pushNamed(context, '/top');
              },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.delivery_dining),
            title: const Text('Доставка'),
            onTap: (){
              Navigator.pushNamed(context, '/delivery');
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
              Navigator.pushNamed(context, '/settings');
              },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings_phone),
            title: const Text('Контакты'),
            onTap: (){
              Navigator.pushNamed(context, '/contacts');
              },
          ),
        ],
      ),
    );

Widget navButton(context) => BottomNavigationBar(
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text("Главная"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.check),
      title: Text("Корзина"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: Text("Профиль"),
    )
  ],
);

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Главная'),
      actions: <Widget>[
      IconButton(
        tooltip: 'Мои заказы',
        onPressed: () {},
        icon: const Icon(Icons.account_balance)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
      TextButton(
        onPressed: () {},
        child: const Text('Профиль', style: TextStyle(color: Colors.white)),
        )
        ]
      ),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Главная станица'),
        ),
      bottomNavigationBar: navButton(context),
    );
  }
}

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Контакты'),
          actions: <Widget>[
            IconButton(
                tooltip: 'Мои заказы',
                onPressed: () {},
                icon: const Icon(Icons.account_balance)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
            TextButton(
              onPressed: () {},
              child: const Text('Профиль', style: TextStyle(color: Colors.white)),
            )
          ]
      ),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Контакты'),
        ),
      bottomNavigationBar: navButton(context),
    );
  }
}

class TopScreen extends StatelessWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Популярные'),
          actions: <Widget>[
            IconButton(
                tooltip: 'Мои заказы',
                onPressed: () {},
                icon: const Icon(Icons.account_balance)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
            TextButton(
              onPressed: () {},
              child: const Text('Профиль', style: TextStyle(color: Colors.white)),
            )
          ]
      ),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Популярные'),
        ),
      bottomNavigationBar: navButton(context),
    );
  }
}
class NewScreen extends StatelessWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Новинки'),
          actions: <Widget>[
            IconButton(
                tooltip: 'Мои заказы',
                onPressed: () {},
                icon: const Icon(Icons.account_balance)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
            TextButton(
              onPressed: () {},
              child: const Text('Профиль', style: TextStyle(color: Colors.white)),
            )
          ]
      ),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Новинки'),
        ),
      bottomNavigationBar: navButton(context),
    );
  }
}

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Доставка'),
          actions: <Widget>[
            IconButton(
                tooltip: 'Мои заказы',
                onPressed: () {},
                icon: const Icon(Icons.account_balance)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
            TextButton(
              onPressed: () {},
              child: const Text('Профиль', style: TextStyle(color: Colors.white)),
            )
          ]
      ),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Доставка'),
        ),
        bottomNavigationBar: navButton(context),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Настройки'),
          actions: <Widget>[
            IconButton(
                tooltip: 'Мои заказы',
                onPressed: () {},
                icon: const Icon(Icons.account_balance)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
            TextButton(
              onPressed: () {},
              child: const Text('Профиль', style: TextStyle(color: Colors.white)),
            )
          ]
      ),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Настройки'),
        ),
      bottomNavigationBar: navButton(context),
    );
  }
}
