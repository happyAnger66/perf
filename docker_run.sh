#! /bin/bash

if [ $# -lt 1 ];
then
  echo "usage $0 <docker_image_tag>"
  exit 0
fi

docker run -id --name bpf -v /usr/src:/usr/src:ro \
       -v /lib/modules/:/lib/modules:ro \
       -v /sys/kernel/debug/:/sys/kernel/debug:rw \
       --net=host --pid=host --privileged \
       $1 \
       /bin/bash