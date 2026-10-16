class Parent:
    x = 50
    def __init__(self):
        self.a = 5
    def add(self):
        print("x:",self.x)

class Child(Parent):
    # Parent.x = 6
    # x = 7
    print(self.x)
    def add(self):
        print("Hi")



ch = Child()
# print(ch.x)
# pr = Parent()
# print(pr.x)
# ch.add()

ch.add()