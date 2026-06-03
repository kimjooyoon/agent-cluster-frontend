// Decision 003 first vertical slice: one Material screen rendering one
// WorkItem constructed from the generated client. No data fetch, no SSE
// consumption — those land with later decisions.
//
// Layer per Atomic Design: this is a page. It does not bypass the
// template/organism layers because the slice has nothing to compose yet;
// the next slice adds those when there is real data flow to model.

import 'package:flutter/material.dart';

import '../contracts_client/work_item.dart';

class WorkItemPage extends StatelessWidget {
  const WorkItemPage({super.key, required this.workItem});

  /// The single WorkItem rendered by this slice. Constructed from the
  /// generated client so the page never invents WorkItem field names.
  final WorkItem workItem;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('WorkItem')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(workItem.id, style: theme.textTheme.labelLarge),
                  const SizedBox(height: 8),
                  Text(workItem.title, style: theme.textTheme.headlineSmall),
                  const SizedBox(height: 16),
                  Chip(label: Text('state: ${workItem.state}')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
