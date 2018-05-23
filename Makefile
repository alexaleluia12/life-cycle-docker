
build:
	@docker build -t mypy-hello:1 . > out-build-image.txt
	@docker run mypy-hello:1
