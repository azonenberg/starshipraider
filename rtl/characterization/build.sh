#!/bin/sh
./synth.ys || exit 1;
gp4par --output /tmp/driver.txt -p SLG46620V --unused-pull down --unused-drive 10k --debug /tmp/driver.json
