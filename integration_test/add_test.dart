import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:framework/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end to end', () {
    testWidgets('Open the app and click add', (tester) async {
      app.main();
      await tester.pumpAndSettle();

    final addTap = find.byIcon(Icons.add);

      await tester.tap(addTap);

      await tester.pumpAndSettle();
      final valueOne = find.byKey(const Key('dynamicLevel'));
      final widgetValue = (tester.widget(valueOne) as Text).data??'';

      debugPrint(widgetValue);

      debugPrint("Test pass");

      await tester.pump(const Duration(seconds: 10));
    });
  });
}
