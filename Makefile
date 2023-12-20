.PHONY: preview
preview:
	quarto preview --port 9871

.PHONY: serve
serve:
	make preview
