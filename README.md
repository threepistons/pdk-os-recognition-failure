# Sample code demonstrating and reproducing https://github.com/puppetlabs/pdk/issues/1190

This repo was made with `pdk new module test` and setting up support for Debian and RedHat OSes only.  Then `pdk new class test` and the code you can see keyed in.  Finally, `pdk test unit --debug &> pdk-test-unit-debug.log`.  Those files and this README.md are the only files I altered.

The tests as written are meant to fail.  What is interesting is *how* they fail.  You'd expect a Scientific Linux test to fail with "I am a RedHat system", not "I am a Debian system".

PDK was installed with packages from Puppetlabs own repo, although tests with the gems obtained from `gem install pdk --user-install` failed in the same way.

## Platform information

```
-> % apt list pdk
Listing... Done
pdk/bullseye,now 2.5.0.0-1bullseye amd64 [installed]
N: There are 3 additional versions. Please use the '-a' switch to see them.

-> % apt show pdk
Package: pdk
Version: 2.5.0.0-1bullseye
Priority: optional
Section: admin
Maintainer: Puppet, Inc. <info@puppet.com>
Installed-Size: 1,009 MB
Homepage: https://www.puppet.com
Download-Size: 292 MB
APT-Manual-Installed: yes
APT-Sources: http://apt.puppetlabs.com bullseye/puppet amd64 Packages
Description: Puppet Development Kit

-> % pdk --version
2.5.0

-> % uname -r
5.10.0-19-amd64

-> % cat /etc/debian_version 
11.5
```
