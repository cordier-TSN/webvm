alias ll='ls -l --color=never'
alias la='ls -la --color=never'
cd /home/root/Workspace/python3/robotframework-7.1.1/
python3 setup.py build
python3 setup.py install
cd /home/root/repo
git init --bare robot.git
cd /home/root/Workspace/robot/
git init
git config --global --add safe.directory /home/root/Workspace/robot
git add tests
git add resources
git config --global user.email "root"
git config --global user.name "root"
git commit -m "initialisation depot"
git remote add origin /home/root/repo/robot.git
git push --set-upstream origin master