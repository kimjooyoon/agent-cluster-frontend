# agent-cluster-frontend

Flutter UI for the agent_cluster_project platform.

**Owned by this repo:** Flutter widgets, Material Design implementation, Atomic
Design directory structure, GetX-style page binding, UI model adapters,
generated-client consumption.

**Not owned by this repo:** any domain vocabulary — aggregates, events,
lifecycle states, views, policies. Those live in
[`agent-cluster-contracts`](https://github.com/kimjooyoon/agent-cluster-contracts)
and reach this repo through a generated client placed in
`lib/contracts_client/`. The cross-repo vocab-scan guard (a future
contracts-owned tool) will enforce this.

## Status

Bootstrap-minimum only. The skeleton is in place but the UI is a placeholder
home page; real screens arrive with the first vertical-slice decision after
`001-initial-agreement` and `002-dumb-agent-role`.

## What works today

- `flutter run -d chrome` shows the bootstrap home page.
- `flutter analyze` and `flutter test` succeed against the rewritten widget
  test.
- `.github/workflows/security.yml` runs the contracts repo's canonical
  secretscan tool on this repo's working tree.

## Layer layout (Atomic Design)

```
lib/
├── main.dart
├── atoms/           leaf widgets — props in, callbacks out (no context, no state)
├── molecules/       compositions of atoms — context-style deps from organisms
├── organisms/       coherent UI sections — UI-model deps from templates
├── templates/       page-level layouts — bind UI models to organisms
├── pages/           routable screens — GetX binds state into templates
└── contracts_client/  GENERATED client placeholder (see its README)
```

Each layer has a `README.md` restating its allowed dependency direction. The
flow per the initial agreement:

- molecules → atoms: **props** (constructor args)
- organisms → molecules: **context** (InheritedWidget / Provider / GetX scope)
- templates → organisms: **UI model** (plain data class)
- pages → templates: **GetX-style** state binding

This is the initial contract, not eternal truth. If the structure creates
friction, record evidence in the contracts repo's concept map and write a
decision record before changing the pattern.

## How to run

```sh
flutter pub get
flutter run -d chrome     # web; the only platform enabled at create time
flutter test
flutter analyze
```
