#!/bin/sh
./synth.ys
gp4par --output /tmp/driver.txt -p SLG46620V --unused-pull down --unused-drive 10k --debug /tmp/driver.json
