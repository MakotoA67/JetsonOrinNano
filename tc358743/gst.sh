#!/bin/sh
gst-launch-1.0 v4l2src device=/dev/video0 ! 'video/x-raw,format=UYVY,width=1920,height=1080,framerate=30/1' ! nvvidconv ! video/x-raw ! xvimagesink sync=0
