import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_widget.dart';

void main() {
  testWidgets(
      'Show MultiChildAnimatedSwitcher and check if it is displayed correctly',
      (tester) async {
    await tester.pumpWidget(
      const TestWidget(
        show: 0,
      ),
    );

    final textFinder = find.text('1');

    expect(textFinder, findsOneWidget);
  });

  testWidgets(
      'Show MultiChildAnimatedSwitcher and check if it is displayed correctly after chaging the page',
      (tester) async {
    await tester.pumpWidget(
      const TestWidget(
        show: 1,
      ),
    );

    // Tap the add button.
    await tester.tap(find.byKey(const ValueKey('fab')));

    final textFinder = find.text('2');

    expect(textFinder, findsOneWidget);
  });
}
