import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app/components/Podcast.dart';

void main() {
  testWidgets('can play podcast', (WidgetTester tester) async {
    await tester.pumpWidget(Podcast());
    final cardTitle = 'test 1';

    // Verify that at start we have the podcast in list and can play it
    expect(find.byIcon(Icons.play_arrow_rounded), findsOneWidget);
    expect(find.byIcon(Icons.pause_rounded), findsNothing);

    // Tap the 'play Icon' icon and play the podcast
    await tester.tap(find.byIcon(Icons.play_arrow_rounded));
    await tester.pump();

    expect(find.text(cardTitle), findsNothing);
  });
}
