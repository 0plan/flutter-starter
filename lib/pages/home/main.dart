import 'package:flutter/material.dart';
import 'package:starter/components/searchBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        children: [
          SearchBarApp(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.home),
            Text('Home'),
          ]),
        ],
      ),
    );
  }
}

