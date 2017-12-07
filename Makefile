CMP = g++ -std=c++11
CLASS = enemyship
MAIN = project
EXEC = runit

$(EXEC): $(CLASS).o $(MAIN).o
	$(CMP) gfx.o -lX11 $(CLASS).o $(MAIN).o -o $(EXEC)

$(CLASS).o: $(CLASS).cpp $(CLASS).h
	$(CMP) -c $(CLASS).cpp -o $(CLASS).o

$(MAIN).o: $(MAIN).cpp $(CLASS).h
	$(CMP) -c $(MAIN).cpp -o $(MAIN).o