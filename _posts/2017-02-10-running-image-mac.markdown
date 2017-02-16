---
layout: post
title:  "Launching the Image on Mac"
date:   2017-02-10 9:45:34 -0500
categories: ['Getting Started for Mac']
---

The last step is to launch our Docker image so we can access AFNI.

If you're on a Mac OSX, there's a script to do this for you in the `/setup/mac/` directory of the [hd4630_workshops][git] repository you downloaded in the last post. All we need to do is run that script, `setup_mac.sh`, in a terminal with Docker running.  

As a reminder, this means that you'll need to open a Docker Quickstart Terminal (if you're using Docker Toolbox) or Terminal with Docker running (if you're using Docker for Mac). You can verify that Docker is running by entering the command 
{% highlight bash %}
docker --version
{% endhighlight %}

If a Docker version lists successfully, you're ready to launch the image! The commands to run the launch script are
{% highlight bash %}
cd $HOME/Desktop/hd4630_workshops-master
chmod -R 770 .
./setup/mac/mac_launch.sh
{% endhighlight %}

You'll know that this has run successfully if your username in the terminal changes to 'student'. Then, we can launch AFNI just by typing it into the terminal:

{% highlight bash %}
afni
{% endhighlight %}

Now you're ready to start working with fMRI data!

[git]: https://github.com/emdupre/hd4630_workshops/
