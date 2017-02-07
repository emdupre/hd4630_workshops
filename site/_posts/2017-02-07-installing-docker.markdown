---
layout: post
title:  "Installing Docker and X11"
date:   2017-02-07 12:05:34 -0500
categories: getting started
---

In this class we'll be using [software containerization][digital-ocean] to run our image processing software, [AFNI][afni]. You'll need to have a few dependencies installed to have this running. 

The first of these is Docker, which will host AFNI. The version of Docker you'll need will vary by your operating system. For ease, the versions of Docker necessary for each of the common operating systems are listed below: 

* If you're on a Mac OSX *and running Yosemite 10.10.3 or above*, install [Docker for Mac][mac-docker]
* If you're running older software on a Mac OSX, install [Docker Toolbox][toolbox]
* If you're on a Windows *and running Windows 10*, install [Docker for Windows][win-docker]
* If you're on running older software on a Windows, install [Docker Toolbox][toolbox]

You'll also need to install an X11 system; this will show the output for each of our analyses in AFNI. The exact X system you need will vary by operating system.

* If you're on a Mac OSX, you'll need to install [XQuartz][xq]
* If you're on a Windows, you'll need to install [Cygwin/X][cx] 

Once you've installed those two software packages, we can work on downloading the data and programs we need! We'll cover that in the next post.

[digital-ocean]: https://www.digitalocean.com/community/tutorials/the-docker-ecosystem-an-overview-of-containerization
[afni]: https://afni.nimh.nih.gov/afni/
[mac-docker]: https://www.docker.com/products/docker#/mac
[win-docker]: https://www.docker.com/products/docker#/windows
[toolbox]: https://www.docker.com/products/docker-toolbox
[xq]: https://www.xquartz.org/
[cx]: https://x.cygwin.com/  
