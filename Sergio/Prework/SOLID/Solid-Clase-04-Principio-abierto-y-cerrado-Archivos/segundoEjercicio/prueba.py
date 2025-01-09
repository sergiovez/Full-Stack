from abc import ABC, abstractmethod

class atackManager(ABC):
    @abstractmethod
    def attack(self, superhero):
        pass

class PunchAttack(atackManager):
    def attack(self, superhero):
        return f"{superhero.name} attacks with a powerful punch!"

class LaserAttack(atackManager):
    def attack(self, superhero):
        return f"{superhero.name} attacks with a laser beam!"

class Superhero:
    def __init__(self, name, health, atackManager):
        self.name = name
        self.health = health
        self.atackManager = atackManager
    def attack(self):
        return self.atackManager.attack(self)
    
class Game:
    def __init__(self):
        self.superheroes = []    
    def add_superhero(self, superhero):
        self.superheroes.append(superhero)
    def superhero_actions(self):
        for superhero in self.superheroes:
            print(superhero.attack())

game = Game()
superhero1 = Superhero("Superman", 100, PunchAttack())
superhero2 = Superhero("Cyclops", 80, LaserAttack())
game.add_superhero(superhero1)
game.add_superhero(superhero2)
game.superhero_actions()