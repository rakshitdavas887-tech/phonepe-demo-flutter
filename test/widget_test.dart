import 'package:flutter_test/flutter_test.dart';
import 'package:projects/main.dart';

void main() {

  testWidgets('App loads test', (WidgetTester tester) async {

    await tester.pumpWidget(const PhonePeDemo());

    expect(find.text("PhonePe"), findsOneWidget);

  });

}
