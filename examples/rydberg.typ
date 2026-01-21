#set page(width: auto, height: auto, margin: 5pt)
#import "../lib.typ": periodic-table-detailed

// Highlight elements commonly used for Rydberg atoms:
// Rb (37), Cs (55), Sr (38)
#periodic-table-detailed(
  highlighted: (37, 55, 38),
  show-title: true,
)
