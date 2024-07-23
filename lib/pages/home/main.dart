import 'package:flutter/material.dart';
import 'package:starter/components/searchBar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        children: [
          Text('항목을 검색해 보세요.', style: TextStyle(height: 2, fontSize: 20)),
          SearchBarApp(),
        ],
      ),
    );
  }
}

