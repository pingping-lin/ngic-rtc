#! /bin/bash

# Move to script directory
cd $(dirname ${BASH_SOURCE[0]})

source ../config/dp_config.cfg
ifconfig $UL_IFACE
ip addr del $S1U_IP/24 dev $UL_IFACE
ifconfig $UL_IFACE

