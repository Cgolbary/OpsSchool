#!/bin/bash
#add fix to exercise1 here
#This line needs to be deleted from default gateway. It’s routing to a local  ip 208.86.224.90  (which even not in use)instead of public ip 208.86.224.90
#This command will delete the this routing from the default gateway


sudo ip route delete 208.86.224.90 dev eth0