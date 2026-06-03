// Bootstrap-minimum smoke test for AgentClusterApp.
//
// Replaces the auto-generated counter test (the counter app itself was
// removed when main.dart was rewritten for the Atomic Design skeleton).

import 'package:flutter_test/flutter_test.dart';

import 'package:agent_cluster_frontend/main.dart';

void main() {
  testWidgets('AgentClusterApp renders the bootstrap home page',
      (WidgetTester tester) async {
    await tester.pumpWidget(const AgentClusterApp());

    expect(find.text('agent-cluster-frontend'), findsOneWidget);
    expect(find.text('bootstrap-minimum build'), findsOneWidget);
  });
}
