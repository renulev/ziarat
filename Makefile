PYTHON ?= python
TYPST ?= typst
MAIN := ziarat

.PHONY: all clean

all: $(MAIN).pdf

contents.typ: generate.py
	$(PYTHON) generate.py

$(MAIN).pdf: $(MAIN).typ contents.typ front.png back.png
	$(TYPST) compile $(MAIN).typ $(MAIN).pdf

clean:
	$(PYTHON) -c "from pathlib import Path; [p.unlink(missing_ok=True) for p in map(Path, ['content.typ', '$(MAIN).pdf'])]; [p.unlink(missing_ok=True) for p in Path('arabic').glob('reading-*.png')]"
