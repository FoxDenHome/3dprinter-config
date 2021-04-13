from gpiozero import Button
from time import sleep
from sys import argv
from requests import post

def postreq(url):
	url = "http://127.0.0.1:7125%s" % url
	print(url, post(url, data = ""))

def trigger_estop():
	postreq("/printer/emergency_stop")

def trigger_unestop():
	postreq("/printer/firmware_restart")

button = Button(int(argv[1]), pull_up=True)

while True:
	button.wait_for_release()
	state = True
	while state:
		trigger_estop()
		sleep(1)
		state = not button.is_pressed

	button.wait_for_press()
	trigger_unestop()
	sleep(1)
