#!/bin/bash

sudo echo never > /sys/kernel/mm/transparent_hugepage/defrag
sudo echo 0 > /sys/kernel/mm/transparent_hugepage/khugepaged/defrag
sudo echo never > /sys/kernel/mm/transparent_hugepage/enabled
sudo echo 0 > /proc/sys/vm/compaction_proactiveness
