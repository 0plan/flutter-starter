// Basic smoke tests for the starter app.
//
// These verify that the app boots inside its required StoreScope and that the
// bottom navigation renders its three tabs.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_zustand/flutter_zustand.dart';

import 'package:starter/main.dart';

void main() {
  testWidgets('App boots and renders the bottom navigation tabs',
      (WidgetTester tester) async {
    // MyApp reads from stores, so it must be wrapped in a StoreScope.
    await tester.pumpWidget(const StoreScope(child: MyApp()));
    await tester.pumpAndSettle();

    // The three bottom navigation labels should be present.
    expect(find.text('홈'), findsOneWidget);
    expect(find.text('즐겨찾기'), findsOneWidget);
    expect(find.text('설정'), findsOneWidget);
  });

  testWidgets('Tapping the settings tab shows the settings list',
      (WidgetTester tester) async {
    await tester.pumpWidget(const StoreScope(child: MyApp()));
    await tester.pumpAndSettle();

    await tester.tap(find.text('설정'));
    await tester.pumpAndSettle();

    // The settings page lists an account entry.
    expect(find.text('계정'), findsOneWidget);
  });
}
