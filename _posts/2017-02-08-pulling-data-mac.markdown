---
layout: post
title:  "Downloading Data on a Mac"
date:   2017-02-08 9:50:34 -0500
categories: getting started
---

The next piece we need is the data to analyze. We'll be using publicly available data from [OpenfMRI][open]. Specifically, we'll be working with

* A [Flanker task][flanker]
* A [Stroop task][stroop] 

You can click through to each of those datasets and download the files yourself, but to make things a little easier I've included a script to download and unpack the data for you into a 'data' folder. This post will go through how to run that script on a Mac.

First, you'll need to download the [hd4630_workshops][git] repository. This can be done by navigating to the Github repository and clicking the green 'Clone or Download' button. Unzip the downloaded directory to your Desktop&mdash; this should create a folder called 'hd4630_workshops-master'. The script to download the data for you lives in that repository, in the folder 'setup/mac/mac_openfMRI.sh' 

To run it, we'll need to open a Terminal and execute the following lines of code
{% highlight bash %}
cd ~/Desktop/hd4630_workshops-master/
chmod -R 770
./setup/mac/mac_openfMRI.sh
{% endhighlight %}

This will start downloading the two datasets for you into a newly created 'data' folder. Each dataset is approximately 2GB in size, so make sure you allow at least 20 minutes for everything to download. In the next post, we'll test our AFNI set up and see if we can view this data!


[open]: https://openfmri.org/
[flanker]: https://openfmri.org/dataset/ds000102/
[stroop]: https://openfmri.org/dataset/ds000164/
[git]: https://github.com/emdupre/hd4630_workshops/