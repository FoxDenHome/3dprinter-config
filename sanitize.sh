#!/bin/sh
sed 's~password:.*~password: REMOVED~g' moonraker.conf > moonraker-stripped.conf
