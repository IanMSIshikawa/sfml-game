CC = g++
CFLAGS = -Wall
INCLUDE_SFML = -I SFML/include
LDFLAGS = main -lsfml-graphics -lsfml-window -lsfml-system
OBJFILES = *.cpp src/*.cpp src/Entidades/*.cpp  src/Entidades/Personagens/*.cpp src/Entidades/Obstaculos/*.cpp src/Gerenciadores/*.cpp src/Listas/*.cpp src/Fases/*.cpp
TARGET = z_jogo
all: 
	$(CC) -c $(OBJFILES) $(INCLUDE_SFML)    
	$(CC) *.o $(CFLAGS) -o $(TARGET)$(LDFLAGS)
	rm  -f *.o
clean:
	rm -f $(TARGET) *~