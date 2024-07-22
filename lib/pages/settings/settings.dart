import 'package:flutter/material.dart';
import 'package:starter/pages/settings/theme.dart';
import 'package:starter/stores/theme.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = useThemeStore();

    final List<Map<String, dynamic>> data = [
      {'icon': Icons.brightness_6, 'title': '테마', 'route': const ThemeSetting()},
      {'icon': Icons.notifications, 'title': '알림'},
      {'icon': Icons.language, 'title': '언어'},
      {'icon': Icons.account_circle, 'title': '계정'}
    ];


    // return a Scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text('설정'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: Icon(data[index]['icon']),
              title: Text(data[index]['title']),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => data[index]['route'])
                );
              },
            ),
          );
        },
      ),
    );
  }
}
