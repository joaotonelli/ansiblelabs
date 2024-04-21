set -x 
clear
echo Setting up the lab...
while [ ! -f /tmp/setup.finished ]; do sleep 3; done
clear
