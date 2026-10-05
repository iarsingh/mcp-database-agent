PYTHON ?= python3
.PHONY: test run docker
test:
	$(PYTHON) -m pytest -q
run:
	PYTHONPATH=src $(PYTHON) -m uvicorn mcpdb.main:app --reload --port 8080
docker:
	docker build -t mcp-database-agent:local .
