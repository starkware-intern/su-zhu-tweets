.PHONY: install build test format

install:
	@protostar --version || curl -L https://raw.githubusercontent.com/software-mansion/protostar/master/install.sh | bash
	python -m venv venv
	@. venv/bin/activate && pip install --upgrade pip cairo-nile && nile install

build:
	protostar build

test:
	@. venv/bin/activate && pytest core

format:
	cairo-format -i core/contracts/**/*.cairo
