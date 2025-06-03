
from robot.api.deco import keyword, library

@library
class myLibFile:
    """Librairie de demonstration personnalisée.
    ''myLibFile'' n'est pas une librairie standard 
    de Robot Framework
    Elle a été crée uniquement dans un but
    de demonstration d'integration python
    """
    def __init__(self):
        self.f = 'demofile.txt'

    @keyword
    def read(self):
        """renvoi le contenu du fichier demofile.txt
        """
        with open(self.f,'r') as file:
            return file.readline()

    @keyword
    def write(self, value):
        """ecrit dans le fichier demofile.txt
        """
        with open(self.f,'w') as file:
            file.write(str(value))

