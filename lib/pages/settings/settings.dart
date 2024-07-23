import 'package:flutter/material.dart';
import 'package:flutter_zustand/flutter_zustand.dart';
import 'package:starter/pages/settings/theme.dart';
import 'package:starter/stores/theme.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final _theme = useThemeStore().select(context, (state) => state);
    String getTheme() {
      if (_theme.toString().contains('dark')) {
        return '어두운 모드';
      } else if (_theme.toString().contains('light')) {
        return '밝은 모드';
      } else {
        return '시스템 설정과 동일';
      }
    }

    final List<Map<String, dynamic>> data = [
      {
        'icon': Icons.account_circle,
        'title': '계정',
        'subtitle': '로그인이 필요해요.'
      },
      {
        'icon': Icons.notifications,
        'title': '알림',
        'subtitle': '알림설정을 변경할 수 있어요.'
      },
      {
        'icon': Icons.brightness_6,
        'title': '테마',
        'subtitle': getTheme(),
        'route': const ThemeSetting()
      },
      {'icon': Icons.language, 'title': '언어', 'subtitle': '한국어'}
    ];

    // return a Scaffold
    return Scaffold(
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: Icon(data[index]['icon']),
              title: Text(data[index]['title']),
              subtitle: Text(data[index]['subtitle']),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                if (data[index]['route'] != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => data[index]['route']));
                } else {
                  // toast message 표시
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('준비중인 기능이에요.'),
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
