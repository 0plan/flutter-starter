import 'package:flutter/material.dart';
import 'package:starter/stores/theme.dart';

class ThemeSetting extends StatelessWidget {
  const ThemeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = useThemeStore();

    return Scaffold(
      appBar: AppBar(
        title: const Text('테마'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.brightness_5),
              title: const Text('밝은 모드'),
              onTap: () {
                theme.setLightTheme();
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.brightness_2),
              title: const Text('어두운 모드'),
              onTap: () {
                theme.setDarkTheme();
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.settings_system_daydream),
              title: const Text('시스템 설정과 동일'),
              onTap: () {
                theme.setSystemTheme();
              },
            ),
          ),
        ],
      ),
    );
  }
}
