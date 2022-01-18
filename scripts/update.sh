#!/bin/sh

cd ~/moonraker && git pull -r
~/moonraker-env/bin/pip install -r ~/moonraker/scripts/moonraker-requirements.txt
sudo /usr/sbin/service moonraker restart

cd ~/klipper && git pull -r
~/klippy-env/bin/pip install -r ~/klipper/scripts/klippy-requirements.txt
sudo /usr/sbin/service klipper restart
