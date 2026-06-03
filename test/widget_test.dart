// Smoke test for the decision 003 vertical slice: app boots, renders one
// WorkItem constructed from the generated contracts client.

import 'package:flutter_test/flutter_test.dart';

import 'package:agent_cluster_frontend/main.dart';

void main() {
  testWidgets('AgentClusterApp renders the seeded WorkItem',
      (WidgetTester tester) async {
    await tester.pumpWidget(const AgentClusterApp());

    expect(find.text('WI-002'), findsOneWidget);
    expect(find.text('Wire first vertical slice'), findsOneWidget);
    expect(find.text('state: in_progress'), findsOneWidget);
  });
}
