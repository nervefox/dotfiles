#!/bin/sh

killall polybar 

polybar --reload mybar &
polybar --reload mybar2
