!/usr/bin/env python3
from robot.api import TestSuiteBuilder, TestSuite
import os
import re

class RobotParser(object):
    def __init__(self):
        self.markdown_file = 'std_str/test.md'
        if os.path.exists(self.markdown_file):
            os.remove(self.markdown_file)

    def parse_robot_file(self, file_path):
        suite_builder = TestSuiteBuilder()
        try: 
            # on extrait le contenu du fichier pour le mettre dans la structure de type TestSuite
            suite = suite_builder.build(file_path)
            with open(self.markdown_file, "a") as f:
                f.write("# {}\n".format(suite.full_name.replace(' ','_')))
                f.write("Nom de la test suite : {}\n".format(suite.full_name.replace(' ','_')))
                if suite.has_setup:
                    suitesetup=suite.setup
                    keyword = suitesetup.name
                    arguments = suitesetup.args
                    f.write("Condition initiale de la TestSuite : {}  {}\n".format(keyword,arguments))

                for testcase in suite.tests:
                    f.write("Intitule Test Case : {}\n".format(testcase.name))
                    f.write("Tags du test : {}\n".format(testcase.tags))
                    idx=1
                    if testcase.has_setup:
                        testsetup  = testcase.setup
                        keyword = testsetup.name
                        arguments = testsetup.args
                        f.write("Condition Initiale du TestCase : {}  {}\n".format(keyword,arguments))
                    f.write("Detail du TestCase :\n")

                    for step in testcase.body:
                        keyword = step.name
                        arguments = step.args
                        f.write("       {} : {}  {}\n".format(idx, keyword,arguments))
                        idx += 1
                    if testcase.has_teardown:
                        teardown=testcase.teardown
                        keyword = teardown.name
                        arguments = teardown.args
                        f.write("Condition de sortie du test case : {}  {}\n".format(keyword,arguments))
                    f.write("\n")

                if suite.has_teardown:
                    suiteteardown=suite.teardown
                    keyword = suiteteardown.name
                    arguments = suiteteardown.args
                    f.write("Condition de sortie de la TestSuite : {}  {}\n".format(keyword,arguments))

        except:
            pass

    def genere_report(self, Path):
        extension = re.compile('.robot')
        for (repertoire, sousRepertoire, fichiers) in os.walk(Path):
            for fichier in fichiers:
                if extension.search(fichier):
                    self.parse_robot_file(os.path.join(repertoire,fichier))

if __name__ == '__main__':
        test=RobotParser()
        test.genere_report('/home/user/Workspace/robot/')

						