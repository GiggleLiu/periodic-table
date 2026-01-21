// Test: Logic and data assertions
#import "../lib.typ": elements, element-position, category-color, category-color-light

// Test element count
#assert(elements.len() == 118, message: "Should have 118 elements")

// Test element-position mapping
#assert(element-position(1) == (0, 0), message: "H should be at (0,0)")
#assert(element-position(2) == (17, 0), message: "He should be at (17,0)")
#assert(element-position(3) == (0, 1), message: "Li should be at (0,1)")
#assert(element-position(10) == (17, 1), message: "Ne should be at (17,1)")
#assert(element-position(11) == (0, 2), message: "Na should be at (0,2)")
#assert(element-position(18) == (17, 2), message: "Ar should be at (17,2)")
#assert(element-position(57) == (2, 5), message: "La should be at (2,5)")
#assert(element-position(58) == (2, 8), message: "Ce should be at (2,8) in lanthanoid row")
#assert(element-position(89) == (2, 6), message: "Ac should be at (2,6)")
#assert(element-position(90) == (2, 9), message: "Th should be at (2,9) in actinoid row")
#assert(element-position(118) == (17, 6), message: "Og should be at (17,6)")

// Test that category colors return valid colors (not white for known categories)
#assert(category-color("alkali") != white, message: "alkali should have a color")
#assert(category-color("noble") != white, message: "noble should have a color")
#assert(category-color("transition") != white, message: "transition should have a color")
#assert(category-color-light("alkali") != white, message: "alkali light should have a color")
#assert(category-color-light("noble") != white, message: "noble light should have a color")

// Test element data structure
#let hydrogen = elements.at(0)
#assert(hydrogen.at(0) == 1, message: "First element should be H with Z=1")
#assert(hydrogen.at(1) == "H", message: "First element symbol should be H")
#assert(hydrogen.at(2) == "Hydrogen", message: "First element name should be Hydrogen")

#let oganesson = elements.at(117)
#assert(oganesson.at(0) == 118, message: "Last element should be Og with Z=118")
#assert(oganesson.at(1) == "Og", message: "Last element symbol should be Og")

// If we get here, all tests passed
#set page(width: auto, height: auto, margin: 10pt)
#text(green, weight: "bold")[All logic tests passed!]
