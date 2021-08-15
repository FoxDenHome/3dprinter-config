#!/bin/sh
sed 's~password:.*~password: REMOVED~g' moonraker.conf | sed 's~token:.*~token: REMOVED~g' > moonraker-stripped.conf
