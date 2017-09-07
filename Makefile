one: ; @echo "one"

two :
	@echo "two"

three : one two
	@echo "three"

four : one | two
	@echo "four"
