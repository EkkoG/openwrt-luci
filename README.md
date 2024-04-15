https://github.com/EkkoG/openwrt-luci


## Add with scripts

```
sh -c "$(curl https://fastly.jsdelivr.net/gh/EkkoG/openwrt-dist@master/add-feed.sh)" -- luci
```

## Manual add


Supported ARCH please see https://sourceforge.net/projects/ekko-openwrt-dist/files/luci/ and replace $ARCH with the one you need.

Run command to add feed

```
echo "src/gz ekkog_luci https://ghproxy.imciel.com/https://downloads.sourceforge.net/project/ekko-openwrt-dist/luci/$ARCH/" | tee -a "/etc/opkg/customfeeds.conf"
```

Then install the signature key, please see

https://github.com/EkkoG/openwrt-dist#install-sign-key
