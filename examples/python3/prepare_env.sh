alias ll='ls -l'
alias la='ls -la'
cd /home/user/Workspace/python3/robotframework-7.1.1/
python3 setup.py build
python3 setup.py install
cd /home/user/Workspace/python3/pyModbusTCP-0.3.0/
python3 setup.py build
python3 setup.py install
cd /home/user/repo
git init --bare robot.git
cd /home/user/Workspace/robot/
git init
git config --global --add safe.directory /home/user/Workspace/robot
git add tests
git add resources
git config --global user.email "user"
git config --global user.name "user"
git commit -m "initialisation depot"
git remote add origin /home/user/repo/robot.git
git push --set-upstream origin master