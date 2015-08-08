GAME_NAME=LuaTetris

rel:
	zip -9 -q -r $(GAME_NAME).love .

run:
	love .
