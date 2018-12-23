#!/bin/bash
mkdir /mnt/data/results/
echo VERSION: $VERSION > /mnt/data/results/result
echo "Thew data has" $(echo -n <(cat /mnt/data/datfile) | wc -c) "characters." >> /mnt/data/results/result
date >> /mnt/data/results/result
