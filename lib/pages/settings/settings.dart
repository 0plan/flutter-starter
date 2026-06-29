import 'package:flutter/material.dart';
import 'package:flutter_zustand/flutter_zustand.dart';
import 'package:starter/pages/settings/theme.dart';
import 'package:starter/stores/theme.dart';

/// A single row in the settings list. Using a typed model instead of
/// `Map<String, dynamic>` makes missing/mistyped keys compile-time errors.
class _SettingItem {
  const _SettingItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.route,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Widget? route;
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  String _themeLabel(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.dark:
        return '어두운 모드';
      case ThemeMode.light:
        return '밝은 모드';
      case ThemeMode.system:
        return '시스템 설정과 동일';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = useThemeStore().select(context, (state) => state);

    final List<_SettingItem> data = [
      const _SettingItem(
        icon: Icons.account_circle,
        title: '계정',
        subtitle: '로그인이 필요해요.',
      ),
      const _SettingItem(
        icon: Icons.notifications,
        title: '알림',
        subtitle: '알림설정을 변경할 수 있어요.',
      ),
      _SettingItem(
        icon: Icons.brightness_6,
        title: '테마',
        subtitle: _themeLabel(theme),
        route: const ThemeSetting(),
      ),
      const _SettingItem(
        icon: Icons.language,
        title: '언어',
        subtitle: '한국어',
      ),
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          final item = data[index];
          return Card(
            child: ListTile(
              leading: Icon(item.icon),
              title: Text(item.title),
              subtitle: Text(item.subtitle),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                final route = item.route;
                if (route != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => route),
                  );
                } else {
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
