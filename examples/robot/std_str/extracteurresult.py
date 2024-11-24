#!/usr/bin/env python3
from robot.api import ExecutionResult, ResultVisitor
import sys
import os
import re

class MyResultVisitor(ResultVisitor):
        def __init__(self, markdown_file='std_str/report.md'):
                self.failed_tests = []
                self.passed_tests = []
                self.markdown_file = markdown_file

        def visit_test(self, test):
                if test.status == 'FAIL':
                        self.failed_tests.append(test.name)
                elif test.status == 'PASS':
                        self.passed_tests.append(test.name)

        def end_result(self, result):
                # Cree un fichier dans lequel on affiche les resultats
                with open(self.markdown_file, "w") as f:
                        f.write("# Robot Framework Report\n")
                        f.write("|Test|Status|\n")
                        f.write("|---|---|\n")
                        for test in self.passed_tests:
                                f.write(f"|{test}|PASS|\n")
                        for test in self.failed_tests:
                                f.write(f"|{test}|FAIL|\n")

if __name__ == '__main__':
        extension = re.compile('.xml')
        markdown_file = "report.md"
        for (repertoire, sousRepertoire, fichiers) in os.walk('/home/user/Workspace/robot/results/'):
                        for fichier in fichiers:
                                if extension.search(fichier):
                                        result = ExecutionResult(os.path.join(repertoire,fichier))
                                        result.visit(MyResultVisitor())