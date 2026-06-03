# molecules/

Compositions of atoms — labeled input field, icon-button-with-tooltip, list
row, etc. Molecules compose atoms via props-style value passing.

Per the initial agreement: **organisms inject dependencies into molecules via
context** (InheritedWidget, Provider, or GetX scoping). Molecules may read
from context but never directly from app state.
