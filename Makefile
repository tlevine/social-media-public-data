.PHONY: deps
deps:
	which reveal-md || sudo npm install -g reveal-md

serve: deps
	reveal-md --separator === --vertical '\---'
