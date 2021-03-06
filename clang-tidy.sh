#!/bin/sh -ex

cd $(dirname $(readlink -f $0))

clang-tidy-6.0 ./src/main.cpp -- $(pkg-config --cflags glib-2.0)  $(pkg-config --cflags ostree-1) -DDEVICE_STREAMS='"foo,bar"' -DDEVICE_API='"url"' -DDOCKER_APPS="1" -DAKLITE_TAGS="1"
