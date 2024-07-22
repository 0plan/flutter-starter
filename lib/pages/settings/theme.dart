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
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.settings_system_daydream),
              title: const Text('시스템테마'),
              onTap: () {
                theme.setSystemTheme();
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.brightness_5),
              title: const Text('라이트모드'),
              onTap: () {
                theme.setLightTheme();
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.brightness_2),
              title: const Text('다크모드'),
              onTap: () {
                theme.setDarkTheme();
              },
            ),
          ),
        ],
      ),
    );
  }
}