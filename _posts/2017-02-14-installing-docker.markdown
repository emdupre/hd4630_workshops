---
layout: post
title:  "Installing Docker"
date:   2017-02-14 12:05:34 -0500
categories: ['Getting Started for Mac', 'Getting Started for Windows']
---

In this class we'll be using [software containerization][digital-ocean] to run our image processing software, [AFNI][afni]. You'll need to install a few dependencies to get this running. 

The first of these is Docker, which will host AFNI. The version of Docker you'll need will vary by your operating system. For ease, the versions of Docker necessary for each of the common operating systems are listed below: 

* If you're on a Mac OSX *and running Yosemite 10.10.3 or above*, install [Docker for Mac](https://www.docker.com/products/docker#/mac){:target="_blank"}
* If you're running older software on a Mac OSX, install [Docker Toolbox](https://www.docker.com/products/docker-toolbox){:target="_blank"}
* If you're on a Windows *and running Windows 10*, install [Docker for Windows](https://www.docker.com/products/docker#/windows){:target="_blank"}
* If you're on running older software on a Windows, install [Docker Toolbox](https://www.docker.com/products/docker-toolbox){:target="_blank"}

Please download the version that's appropriate for your computer and operating system, following any installation instructions provided. Then, look to the next post in the guide for your OS to install our other software dependency, an X11 system. 

[digital-ocean]: https://www.digitalocean.com/community/tutorials/the-docker-ecosystem-an-overview-of-containerization
[afni]: https://afni.nimh.nih.gov/afni/
