# Xiaomi Yi Z2*L 1.5.6 customized bitrates script
# see https://github.com/aristofun/yi156bitrates
#

# 2K
#2304x1296 30fps - Hi - 45mb
writew 0xC05C8EB2 0x4234
#2304x1296 30fps - Mid - 35mb
writew 0xC05C8EC2 0x420C
#2304x1296 30fps - Low - 25mb
writew 0xC05C8ED2 0x41C8

# FullHD
#1920x1080 30fps - Hi - 30mb
writew 0xC05C8F72 0x41F0
#1920x1080 30fps - Mid - 25mb
writew 0xC05C8F82 0x41C8
#1920x1080 30fps - Low - 18mb
writew 0xC05C8F92 0x4190

#1920x1080 48fps - Hi - 35mb
writew 0xC05C9452 0x420C
#1920x1080 48fps - Mid - 30mb
writew 0xC05C9462 0x41F0
#1920x1080 48fps - Low - 20mb 
writew 0xC05C9472 0x41A0

#1920x1080 60fps - Hi - 45mb
writew 0xC05C8EE2 0x4234
#1920x1080 60fps - Mid - 35mb
writew 0xC05C8EF2 0x420C
#1920x1080 60fps - Low - 25mb
writew 0xC05C8F02 0x41C8

#1920x1080 24fps - Hi - 30mb
writew 0xC05C9482 0x41F0
#1920x1080 24fps - Mid - 25mb
writew 0xC05C9492 0x41C8
#1920x1080 24fps - Low - 18mb
writew 0xC05C94A2 0x4190

# HD
#1280x720 120fps - Hi - 40mb
writew 0xC05C9812 0x4220
#1280x720 120fps - Mid - 30mb
writew 0xC05C9822 0x41F0
#1280x720 120fps - Low - 25mb
writew 0xC05C9832 0x41C8

#1280x720 60fps - Hi - 25mb
writew 0xC05C9122 0x41C8
#1280x720 60fps - Mid - 20mb
writew 0xC05C9132 0x41A0
#1280x720 60fps - Low - 18mb
writew 0xC05C9142 0x4190

#1280x720 48fps - Hi - 25mb
writew 0xC05C95A2 0x41C8
#1280x720 48fps - Mid - 20mb
writew 0xC05C95B2 0x41A0
#1280x720 48fps - Low - 16mb
writew 0xC05C95C2 0x4170

#1280x720 30fps - Hi - 20mb
writew 0xC05C9182 0x41A0
#1280x720 30fps - Mid - 16mb
writew 0xC05C9192 0x4170
#1280x720 30fps - Low - 12mb
writew 0xC05C91A2 0x4140

#1280x720 24fps - Hi - 20mb
writew 0xC05C95D2 0x41A0
#1280x720 24fps - Mid - 16mb
writew 0xC05C95E2 0x4170
#1280x720 24fps - Low - 12mb
writew 0xC05C95F2 0x4140


# Other (Hi options only)
#1280x960 24fps
writew 0xC05C9572 0x41C8
#1280x960 30fps
writew 0xC05C92A2 0x41C8
#1280x960 48fps
writew 0xC05C9542 0x41C8
#1280x960 60fps
writew 0xC05C9272 0x41C8
#1600x1200 24fps
writew 0xC05C9512 0x41C8
#1600x1200 30fps
writew 0xC05C90C2 0x41C8
#1600x1200 48fps
writew 0xC05C94E2 0x41C8
#1600x1200 60fps
writew 0xC05C9092 0x41C8


t gpio 6 sw out1 
sleep 1
t gpio 6 sw out0
t gpio 54 sw out1
sleep 1
t gpio 54 sw out0

#short beep & front leds
t gpio 6 sw out1
t gpio 54 sw out0
t pwm 1 enable

sleep 1
t gpio 6 sw out0
t gpio 54 sw out0
t pwm 1 disable
