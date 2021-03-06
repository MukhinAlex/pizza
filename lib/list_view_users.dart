import 'package:flutter/material.dart';

class ListViewUsersApp extends StatelessWidget {
  const ListViewUsersApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }
}
class User {
  String? name;
  String? phone;

  User(this.name, this.phone);
}

final List<User> users = <User>[
  User("Александр", "+7 900 123 45 67"),
  User("Андрей", "+7 900 123 45 67"),
  User("Виктор", "+7 900 987 65 43"),
  User("Елена", "88002440000"),
  User("Александр", "+7 900 123 45 67"),
  User("Вера", "+7 900 123 4568"),
  User("Дима", "+7 900 234 56 78"),
  User("Дмитрий", "+7 900 234 53 78"),
  User("Сергей", "+7 900 234 53 78"),
  User("Ольга", "+7 900 254 53 78"),
  User("Александр", "+7 900 123 45 67"),
  User("Вера", "+7 900 123 4568"),
  User("Дима", "+7 900 234 56 78"),
  User("Дмитрий", "+7 900 234 53 78"),
  User("Сергей", "+7 900 234 53 78"),
  User("Ольга", "+7 900 254 53 78")
];

class MyListItem extends StatelessWidget {
  const MyListItem({Key? key, required this.number, this.user}) : super(key: key);

  //final String text;
  final int number;
  final dynamic user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            border: Border.all()
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${user[number].name}", style: Theme.of(context).textTheme.headline6),
            Text("Телефон: ${user[number].phone}", style: Theme.of(context).textTheme.bodyText1)
          ],
        )
  ),
      onTap: () {},
    );
    }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        return MyListItem(number: index, user: users);
      },
    );
  }
}
