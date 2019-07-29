#! /bin/bash

fdisk /dev/sda2 <<EOF
p
q
EOF
