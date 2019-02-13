#!/usr/bin/python

import subprocess
from time import sleep

bg = "#202020"
fg = "#cccccc"


def exec(command):
    return subprocess.run(command, capture_output=True, shell=True, text=True).stdout.rstrip()


def desktop():
    desktop = exec("bspc query -D -d --names")
    return "%{{R}} {desktop} ".format(desktop=desktop)


def app():
    app = exec("xdotool getwindowfocus getwindowname")
    return "%{{R}} {app} ".format(app=app)


def date():
    time = exec("date '+%H:%M'")
    date = exec("date '+%Y-%m-%d'")

    return "%{{r}}{time} %{{R}} {date} %{{B-}}%{{F-}}".format(time=time, date=date)


while True:
    print(desktop() + app() + date(), flush=True)
    sleep(1)
