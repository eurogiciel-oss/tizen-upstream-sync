all: check

check:
	@for x in $$(find . -name "*.xml"); do \
		echo -n $$x: ; xmllint --noout $$x && echo OK || echo FAIL; \
	done
