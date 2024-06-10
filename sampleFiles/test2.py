
import sys
import os

class Test:

    def __init__(self) -> None:
        print("Test init")

    def add(self, a : int, b : int) -> int:
        return a + b

    def subtract(self, a : int, b : int) -> int:
        return a - b

t = Test()

def blah():
    try:
        print("blah")
        print(t.add(1, 2))
        print(t.subtract(1, 2))
    except:
        print("sad")

blah()
