import random
# class newclass(oldclass) / # class subclass(superclass)            # methof of inheritance
class MyList(list):       # inherits from list
    
    def shuffle(self):
        random.shuffle(self)

    def get_random(self):
        return random.choice(self)
# object
a = MyList([12,121,34,67,7,888,45,56,77])
a.sort()
print(a)

a.shuffle()
print(a)

print("random item from list = ", a.get_random())