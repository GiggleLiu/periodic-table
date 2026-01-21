// Test: Compact periodic table rendering
#set page(width: auto, height: auto, margin: 5pt)

#import "../lib.typ": periodic-table

// Default parameters
#periodic-table()

#pagebreak()

// Custom parameters
#periodic-table(length: 1cm, size: 0.8, gap: 0.05)
