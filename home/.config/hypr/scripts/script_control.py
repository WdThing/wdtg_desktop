#!/usr/bin/python3

import datetime
import time
import subprocess


def hyprsunset():
    now = datetime.datetime.now()

    # Start/Kill hyprsunset
    hyprsunset_running = bool(int(subprocess.check_output("pgrep -x hyprsunset > /dev/null && echo 1 || echo 0", shell=True)))
    if not ("07:00" < now.strftime("%H:%M") < "20:00"):
        if not hyprsunset_running:
            subprocess.Popen("hyprsunset --temperature 3500", shell=True)
    else:
        if hyprsunset_running:
            subprocess.Popen("pkill hyprsunset", shell=True)


if __name__ == "__main__":
    while True:
        hyprsunset()
        time.sleep(60)

