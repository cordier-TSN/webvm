
from robot.api.deco import keyword, library

@library
class Modbus:
    def __init__(self):
        self.f = open('demofile.txt', "a+")

    @keyword
    def read(self):
        return self.f.readline()

    @keyword
    def write(self, value):
        self.f.write(str(value))

