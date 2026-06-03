// Sanity test for the generated contracts client.
//
// Asserts that the query wire identifier reaches Dart through the generated
// constant (constraint C-006). If a future contracts-side rename ships a
// different wire-name, this test breaks before any UI code starts using the
// stale string.

import 'package:flutter_test/flutter_test.dart';

import 'package:agent_cluster_frontend/contracts_client/list_work_items.dart';

void main() {
  test('listWorkItemsQueryName matches the wire identifier the backend expects',
      () {
    // This is the one place the test contract requires the literal — the
    // whole point is to break here if contracts ever renames the wire.
    expect(listWorkItemsQueryName, equals('workItems')); // wirelint:ignore
  });
}
