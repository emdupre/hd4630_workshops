---
layout: post
title:  "Launching the Image on Windows"
date:   2017-02-10 9:45:34 -0500
categories: ['Getting Started for Windows']
---

The last step is to launch our Docker image so we can access AFNI.

If you're on Windows, there are two scripts to help you do this in the `\setup\windows\` directory of the [hd4630_workshops][git] repository you downloaded in the last post. All we need to do is run those scripts: `windows_ip.exe` and `windows_launch.sh`.  

First, you'll need to open a CMD (command prompt) terminal to run the `windows_ip.exe` script. In the CMD terminal, issue the commands
{% highlight batch %}
cd %UserProfile%\hd4630_workshops-master
setup\windows\windows_ip.cmd
{% endhighlight %}

This should output your IP address to the CMD terminal. Save that IP address, as we'll need to use it later. 

Next, we'll need Docker running, which means that you'll need to open a Docker Quickstart Terminal. You can verify that Docker is running by entering the command 
{% highlight bash %}
docker --version
{% endhighlight %}
into the Quickstart Terminal.

If a Docker version lists successfully, you know Docker is running!  Now we're going to use the IP address you found earlier, which I'll call \<IP> in the script below, and run the following in the Docker Quickstart Terminal
{% highlight bash %}
cd $HOME/Desktop/hd4630_workshops-master
chmod -R 770 .
./setup/windows/windows_launch.sh <IP>
{% endhighlight %}

You should manually type out your IP address in place of \<IP> when you enter the above commands.

You'll know that this has run successfully if your username in the terminal changes to 'student'. Then, we can launch AFNI just by typing it into the terminal:

{% highlight bash %}
afni
{% endhighlight %}

You should see the AFNI display begin to open up. Now you're ready to start working with fMRI data!

[git]: https://github.com/emdupre/hd4630_workshops/
