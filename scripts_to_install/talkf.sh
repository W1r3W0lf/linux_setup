#!/bin/bash
xsel | pico2wave -w text.wav  && aplay text.wav
