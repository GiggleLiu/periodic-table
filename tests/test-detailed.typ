// Test: Detailed (ACS-style) periodic table rendering
#set page(width: auto, height: auto, margin: 5pt)

#import "../lib.typ": periodic-table-detailed

// Default parameters
#periodic-table-detailed()

#pagebreak()

// Custom parameters
#periodic-table-detailed(length: 0.6cm, size: 2.0, gap: 0.2)
