docker-ghost
============

Makefile for easy and comfortable Ghost Docker image creation and instance restarts.

### Installation

1. Clone repository:  
  `git clone https://github.com/frdmn/docker-ghost.git /opt/docker-ghost`
1. Download and adjust configuration:  
  `cd /opt/docker-ghost`
  `vi config.js`  

### Usage

To pull/update to the latest Ghost version:

`make pull`

To start or restart Ghost:

`make run`

### Version
1.0.0

### Lincense
[WTFPL](LICENSE)
