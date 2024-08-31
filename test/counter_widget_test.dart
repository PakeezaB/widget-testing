import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing_app/counter_widget.dart';

void main() {
  //define a widget test
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    //interact with widgets during the test
    // Build our widget and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: CounterWidget()));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byKey(const Key('increment')));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
