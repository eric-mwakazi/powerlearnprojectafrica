class Pet:
    def __init__(self, name):
        self.name = name
        self.hunger = 5
        self.energy = 5
        self.happiness = 5
        self.tricks = []

    def eat(self):
        """Reduces hunger by 3 points (not below 0) and increases happiness by 1."""
        if self.hunger > 0:
            self.hunger = max(0, self.hunger - 3)
            self.happiness = min(10, self.happiness + 1)
        print(f"{self.name} ate and is now less hungry. Hunger: {self.hunger}, Happiness: {self.happiness}")

    def sleep(self):
        """Increases energy by 5 points (not above 10)."""
        self.energy = min(10, self.energy + 5)
        print(f"{self.name} is sleeping. Energy: {self.energy}")

    def play(self):
        """Decreases energy by 2, increases happiness by 2, and increases hunger by 1."""
        if self.energy >= 2:
            self.energy -= 2
            self.happiness = min(10, self.happiness + 2)
            self.hunger = min(10, self.hunger + 1)
            print(f"{self.name} played and is happy! Energy: {self.energy}, Hunger: {self.hunger}, Happiness: {self.happiness}")
        else:
            print(f"{self.name} is too tired to play!")

    def train(self, trick):
        """Teaches the pet a new trick and stores it in a list."""
        self.tricks.append(trick)
        print(f"{self.name} learned a new trick: {trick}!")

    def show_tricks(self):
        """Prints all the tricks the pet has learned."""
        if self.tricks:
            print(f"{self.name} knows the following tricks:")
            for trick in self.tricks:
                print(f"- {trick}")
        else:
            print(f"{self.name} hasn't learned any tricks yet.")

    def get_status(self):
        """Prints the current state of the pet."""
        print(f"{self.name}'s Status:")
        print(f"Hunger: {self.hunger}/10, Energy: {self.energy}/10, Happiness: {self.happiness}/10")
        self.show_tricks()


# Example usage:
my_pet = Pet("Buddy")
my_pet.get_status()
my_pet.eat()
my_pet.sleep()
my_pet.play()
my_pet.train("Sit")
my_pet.train("Roll over")
my_pet.get_status()
