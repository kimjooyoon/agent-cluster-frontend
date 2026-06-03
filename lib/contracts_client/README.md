# contracts_client/

Placeholder for the generated client that consumes JSON IR / GraphQL schema
exported by `agent-cluster-contracts`. Files here will be **generated**, not
hand-written.

Until the first vertical-slice decision lands, this directory is empty. The
constraint from the concept map (C-001) is that the frontend never redefines
domain vocabulary — any aggregate, event, lifecycle state, or view must be
imported from the generated client, not declared in `lib/`.
