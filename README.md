# Apache ZooKeeper Docker Development Environment

This is my personal docker images for ZK development - for when I need
a particular environment to do testing. e.g. Ubuntu 14.04

This is NOT docker images for ZooKeeper itself. :-)


Typically you'll run the image like:

docker run -it --name &lt;NAME> -v /Users/$USER/dev/zookeeper-br34:/root/zookeeper &lt;IMAGE> bash

Notice the use of volumes to map a ZooKeeper working directory into the container. We're running a bash command from which you can compile/run/test/etc... as appropriate.

I publish my images on Docker Hub if you want to access them directly: http://bit.ly/25nIUOn
