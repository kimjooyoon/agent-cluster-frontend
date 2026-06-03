// agent-cluster-frontend: decision 003 first vertical slice.
//
// Renders one WorkItem constructed from the generated contracts client. The
// generated class (lib/contracts_client/work_item.dart) is the SSOT for the
// WorkItem shape; this file never re-declares fields.

import 'package:flutter/material.dart';

import 'contracts_client/work_item.dart';
import 'pages/work_item_page.dart';

void main() {
  runApp(const AgentClusterApp());
}

class AgentClusterApp extends StatelessWidget {
  const AgentClusterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'agent-cluster-frontend',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const WorkItemPage(workItem: _seedWorkItem),
    );
  }
}

const _seedWorkItem = WorkItem(
  id: 'WI-002',
  title: 'Wire first vertical slice',
  state: 'in_progress',
);
