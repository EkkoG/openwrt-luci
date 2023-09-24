#!/bin/sh
cp feeds.conf.default feeds.conf
echo "src-link local_build /feed" >> ./feeds.conf

./scripts/feeds update -a
make defconfig
./scripts/feeds install -p local_build -f luci-app-natmap

make package/luci-app-natmap/compile V=s