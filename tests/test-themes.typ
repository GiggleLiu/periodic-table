// Test: Color themes
#set page(width: auto, height: auto, margin: 5pt)

#import "../lib.typ": periodic-table, periodic-table-detailed

// Test 1: Bright theme (default for compact)
#periodic-table(theme: "bright", show-legend: false)

#pagebreak()

// Test 2: Dark theme (default for detailed)
#periodic-table(theme: "dark", show-legend: false)

#pagebreak()

// Test 3: Pastel theme
#periodic-table(theme: "pastel", show-legend: false)

#pagebreak()

// Test 4: Grayscale theme (bright)
#periodic-table(theme: "grayscale", show-legend: false)

#pagebreak()

// Test 5: Grayscale dark theme
#periodic-table(theme: "grayscale-dark", show-legend: false)

#pagebreak()

// Test 6: Neon theme
#periodic-table(theme: "neon", show-legend: false)

#pagebreak()

// Test 7: Detailed with pastel theme
#periodic-table-detailed(theme: "pastel", show-legend: false)

#pagebreak()

// Test 8: Detailed with neon theme
#periodic-table-detailed(theme: "neon", show-legend: false)
