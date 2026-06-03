// agent-cluster-frontend: bootstrap-minimum placeholder.
//
// The real UI arrives with the first vertical-slice decision after
// 002-dumb-agent-role. Layers live under lib/{atoms,molecules,organisms,
// templates,pages} per Atomic Design. Data flow per initial agreement:
//   molecules -> atoms:     props-style value passing
//   organisms -> molecules: context-style dependency
//   templates -> organisms: UI model binding
//   pages -> templates:     GetX-style page binding

import 'package:flutter/material.dart';

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
      home: const _BootstrapHomePage(),
    );
  }
}

class _BootstrapHomePage extends StatelessWidget {
  const _BootstrapHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('agent-cluster-frontend')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'bootstrap-minimum build',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 8),
              Text(
                'Contracts SSOT: github.com/kimjooyoon/agent-cluster-contracts',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'The real UI arrives with the first vertical-slice decision. '
                'See lib/{atoms,molecules,organisms,templates,pages} for the '
                'Atomic Design layer skeleton.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
