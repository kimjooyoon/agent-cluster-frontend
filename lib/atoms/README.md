# atoms/

Leaf widgets. The smallest reusable UI primitives — buttons, text, icons,
spacing tokens. Atoms know nothing about layout above them and never read app
state directly.

Per the initial agreement: **molecules pass values into atoms via props
(constructor arguments)**. Atoms must accept their inputs explicitly and emit
events via callbacks; they must not look up state from contexts, providers,
or GetX controllers.
