docker-ghost
============

Makefile for easy and comfortable Ghost Docker image creation and instance restarts.

Caution: This repository uses the official [Ghost Dockerfile](https://registry.hub.docker.com/u/dockerfile/ghost/dockerfile/)!

### Installation

1. Clone repository:  
  `git clone https://github.com/frdmn/docker-ghost.git /opt/docker-ghost`
1. Download and adjust configuration:  
  `cd /opt/docker-ghost`
  `vi config.js`  

### Usage

To pull/update to the latest Ghost version as well as restart your Docker instance:

`make`

To start or restart Ghost:

`make run`

Stop and remove the container:

`make stop`  
`make remove`  

### Version
1.0.0

### Lincense
[WTFPL](LICENSE)
