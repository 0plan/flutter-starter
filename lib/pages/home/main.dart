import 'package:flutter/material.dart';
import 'package:starter/components/searchBar.dart';
import 'package:starter/pages/settings/settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Settings()),
                );
              },
              icon: const Icon(Icons.settings)),
        ],
      ),
      body: const Center(
        child: Column(
          children: [
            SearchBarApp(),
          ]
        )
      )
    );
  }
}
