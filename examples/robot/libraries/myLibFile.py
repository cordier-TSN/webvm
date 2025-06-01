
from robot.api.deco import keyword, library

@library
class myLibFile:
    def __init__(self):
        self.f = 'demofile.txt'

    @keyword
    def read(self):
        with open(self.f,'r') as file:
            return file.readline()

    @keyword
    def write(self, value):
        with open(self.f,'w') as file:
            file.write(str(value))

