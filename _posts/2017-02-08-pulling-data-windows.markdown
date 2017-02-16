---
layout: post
title:  "Downloading Data on Windows"
date:   2017-02-11 9:50:35 -0500
categories: ['Getting Started for Windows']
---

The next piece we need is the data to analyze. We'll be using publicly available data from [OpenfMRI][open]. Specifically, we'll be working with

* A [Flanker task][flanker]
* A [Stroop task][stroop] 

First, you'll need to download the [hd4630_workshops][git] repository. This can be done by navigating to the Github repository and clicking the green 'Clone or Download' button. Unzip the downloaded directory to your Desktop&mdash; this should create a folder called 'hd4630_workshops-master'.

Open 'hd4630_workshops-master' and create a new folder called 'data.' You'll need to download the two datasets and store them, unzipped, in that 'data' folder. For the Flanker task, make sure to download the revised data!

Each dataset is approximately 2GB in size, so make sure you allow at least 20 minutes for everything to download. In the next post, we'll test our AFNI set up and see if we can view this data!


[open]: https://openfmri.org/
[flanker]: https://openfmri.org/dataset/ds000102/
[stroop]: https://openfmri.org/dataset/ds000164/
[git]: https://github.com/emdupre/hd4630_workshops/