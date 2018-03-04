# Xiaomi Yi Z(22/23/25)L 1.5.12 customized bitrates script
# WARNING: may be not compatible with other hardware revisions (Z2*, Z26L etc.)!
# see https://github.com/aristofun/yi-bitrates
# 

#desactivar Auto Balance Blancos
#t ia2 -awb off

#set AAA function
#Activar ajuste de blancos# -3a [ae][awb][af][adj]: turn on/off ae/awb/af/adj
#  ae = [0|1], 0:on 1:off AE
#  awb = [0|1], 0:on 1:off AWB
#  af  = [0|1], 0:on 1:off AF
#  adj = [0|1], 0:on 1:off ADJ
#t ia2 -3a 1 1 0 1

#set Noise Reduction
# tidx: [ev_idx][nf_idx][shutter_idx], -1 disable  
# [nf_idx]: 0-16383
t ia2 -adj tidx -1 200 -1


# 2K
#2304x1296 30fps - Hi - 45mb
writew 0xC05CBEB2 0x4234
#2304x1296 30fps - Mid - 35mb
writew 0xC05CBEC2 0x420C
#2304x1296 30fps - Low - 25mb
writew 0xC05CBED2 0x41C8

# FullHD
#1920x1080 30fps - Hi - 30mb
writew 0xC05CBF72 0x41F0
#1920x1080 30fps - Mid - 25mb
writew 0xC05CBF82 0x41C8
#1920x1080 30fps - Low - 18mb
writew 0xC05CBF92 0x4190

#1920x1080 48fps - Hi - 35mb
writew 0xC05CC452 0x420C
#1920x1080 48fps - Mid - 30mb
writew 0xC05CC462 0x41F0
#1920x1080 48fps - Low - 20mb 
writew 0xC05CC472 0x41A0

#1920x1080 60fps - Hi - 45mb
writew 0xC05CBEE2 0x4234
#1920x1080 60fps - Mid - 35mb
writew 0xC05CBEF2 0x420C
#1920x1080 60fps - Low - 25mb
writew 0xC05CBF02 0x41C8

#1920x1080 24fps - Hi - 30mb
writew 0xC05CC482 0x41F0
#1920x1080 24fps - Mid - 25mb
writew 0xC05CC492 0x41C8
#1920x1080 24fps - Low - 18mb
writew 0xC05CC4A2 0x4190

# HD
#1280x720 120fps - Hi - 40mb
writew 0xC05CC812 0x4220
#1280x720 120fps - Mid - 30mb
writew 0xC05CC822 0x41F0
#1280x720 120fps - Low - 25mb
writew 0xC05CC832 0x41C8

#1280x720 60fps - Hi - 25mb
writew 0xC05CC122 0x41C8
#1280x720 60fps - Mid - 20mb
writew 0xC05CC132 0x41A0
#1280x720 60fps - Low - 18mb
writew 0xC05CC142 0x4190

#1280x720 48fps - Hi - 25mb
writew 0xC05CC5A2 0x41C8
#1280x720 48fps - Mid - 20mb
writew 0xC05CC5B2 0x41A0
#1280x720 48fps - Low - 16mb
writew 0xC05CC5C2 0x4170

#1280x720 30fps - Hi - 20mb
writew 0xC05CC182 0x41A0
#1280x720 30fps - Mid - 16mb
writew 0xC05CC192 0x4170
#1280x720 30fps - Low - 12mb
writew 0xC05CC1A2 0x4140

#1280x720 24fps - Hi - 20mb
writew 0xC05CC5D2 0x41A0
#1280x720 24fps - Mid - 16mb
writew 0xC05CC5E2 0x4170
#1280x720 24fps - Low - 12mb
writew 0xC05CC5F2 0x4140


# Other (Hi options only)
#1280x960 24fps
writew 0xC05CC572 0x41C8
#1280x960 30fps
writew 0xC05CC2A2 0x41C8
#1280x960 48fps
writew 0xC05CC542 0x41C8
#1280x960 60fps
writew 0xC05CC272 0x41C8
#1600x1200 24fps
writew 0xC05CC512 0x41C8
#1600x1200 30fps
writew 0xC05CC0C2 0x41C8
#1600x1200 48fps
writew 0xC05CC4E2 0x41C8
#1600x1200 60fps
writew 0xC05CC092 0x41C8

#set buzzer volume 1-150
#front led blink

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
