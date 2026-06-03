# templates/

Page-level layouts that arrange organisms and bind the page's UI model down.
Templates are concrete layouts (e.g. `WorkItemListTemplate`) but contain no
data fetching — they receive a `UIModel` value and render it.

Per the initial agreement: **pages bind GetX (or equivalent) state into the
template's UI model.** Templates remain testable in isolation with a static
fixture.
