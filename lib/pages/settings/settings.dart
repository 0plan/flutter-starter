import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('설정'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: const Center(
          child: Column(children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.brightness_6),
                title: Text('테마2'),
                trailing: Icon(Icons.arrow_right),
              ),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('알림'),
                  trailing: Icon(Icons.arrow_right)),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.language),
                title: Text('언어'),
                trailing: Icon(Icons.arrow_right),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('계정'),
                trailing: Icon(Icons.arrow_right),
              ),
            )
          ]),
        ));
  }
}
