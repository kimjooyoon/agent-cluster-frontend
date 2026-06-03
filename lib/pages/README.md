# pages/

Routable screens. A page wires a `GetxController` (or equivalent state
holder) to a template, performing the data fetching, navigation, and
lifecycle management. Pages are the only layer that depends on routing or
global app state.

Per the initial agreement: **pages bind GetX-style state into templates.**
Lower layers must remain unaware of the routing or state-management library.
