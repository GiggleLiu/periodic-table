.PHONY: all test test-logic test-compact test-detailed test-options test-themes images clean

TYPST = typst compile --root .

all: test

test: test-logic test-compact test-detailed test-options test-themes
	@echo "All tests passed!"

test-logic:
	@echo "Running logic tests..."
	@$(TYPST) tests/test-logic.typ tests/test-logic.pdf
	@echo "Logic tests passed!"

test-compact:
	@echo "Running compact table test..."
	@$(TYPST) tests/test-compact.typ tests/test-compact.pdf
	@echo "Compact table test passed!"

test-detailed:
	@echo "Running detailed table test..."
	@$(TYPST) tests/test-detailed.typ tests/test-detailed.pdf
	@echo "Detailed table test passed!"

test-options:
	@echo "Running options test..."
	@$(TYPST) tests/test-options.typ tests/test-options.pdf
	@echo "Options test passed!"

test-themes:
	@echo "Running themes test..."
	@$(TYPST) tests/test-themes.typ tests/test-themes.pdf
	@echo "Themes test passed!"

images:
	@echo "Generating images..."
	@$(TYPST) examples/compact.typ images/compact.png
	@$(TYPST) examples/detailed.typ images/detailed.png
	@$(TYPST) examples/rydberg.typ images/rydberg.png
	@$(TYPST) examples/theme-pastel.typ images/theme-pastel.png
	@$(TYPST) examples/theme-neon.typ images/theme-neon.png
	@$(TYPST) examples/theme-grayscale.typ images/theme-grayscale.png
	@$(TYPST) examples/theme-grayscale-dark.typ images/theme-grayscale-dark.png
	@echo "Images generated!"

clean:
	rm -f tests/*.pdf
