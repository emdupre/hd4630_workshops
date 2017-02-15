---
layout: post
title:  "Pulling from Docker Hub"
date:   2017-02-08 9:45:34 -0500
categories: ['Getting Started']
---

Now that Docker is up and running, we need to pull the Docker image we'll be using in this class. 

People make Docker images containing many different kinds of software, and then they are publicly hosted on [Docker Hub][hub]. We need to pull the image that contains the AFNI setup we'll need for this class. It's available on Docker Hub as [emdupre/hd4630_workshops][image]. 

To get this image,  you'll need to start a new Docker Quickstart Terminal (if you're using Docker Toolbox) or Terminal with Docker running (if you're using Docker for Mac). Check back to the Docker installation instructions in the previous post if you need help downloading Docker. You can verify that Docker is running by entering the command 
{% highlight bash %}
docker --version
{% endhighlight %}

If a Docker version lists successfully, you're ready to go to the next step. We need to pull our image (all 3.8GB of it) from Docker Hub. This is something you should let run for about 10-15 minutes, so block out time to go get a coffee. The command to pull the image is
{% highlight bash %}
docker pull emdupre/hd4630_workshops
{% endhighlight %}

If you have difficulty downloading the image, I've also included the source code in the hd4630_workshops repository. After downloading the repository (see the next post for a reminder of how to do this), run
{% highlight bash %}
docker build -t emdupre/hd4630_workshops .
{% endhighlight %}

This will create the image on your local computer.

[hub]: https://hub.docker.com/
[image]: https://hub.docker.com/r/emdupre/hd4630_workshops/
