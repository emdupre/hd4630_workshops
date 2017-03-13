---
layout: post
title:  "Second Workshop"
date:   2017-03-7 9:45:34 -0500
categories: ['In Class Exercises']
---

Before class, we'll need to download additional data and scripts for the second workshop. Everything you'll need is available from this [link][dropbox]. 

The linked Dropbox folder includes three items:
* a zipped folder `Flanker_stim.zip`, 
* a shell script `adjust_hdr.sh`, and 
* completed first- and second-level analyses for seven subjects, `group.grp_01.zip`.

`Flanker_stim.zip` contains stimulus timing information extracted from each subject's tsv files and organized into text files AFNI will accept. The python script used to create these files, `grab_onsets.py`, is also included. The included text files should be placed in the appropriate subject's `func` directory. 

`adjust_hdr.sh` is a shell script specific to the OpenfMRI task we're analyzing&mdash; it allows coregistration between the included functional and anatomical images to proceed normally. It should be placed in run in the `$HOME/Desktop/hd4630_workshops-master/code/` directory on your computer and run in a docker session from within `~/student/data/Flanker_task`. 

`group.grp_01.zip` is a zipped folder with completed first- and second-level analysis for the first seven subjects in the Flanker task. For demonstration purposes, it should be unzipped into the `$HOME/Desktop/hd4630_workshops-master/data/` directory on your computer. 

The slides for the second workshop are available [here][slides]. 


[dropbox]: https://www.dropbox.com/sh/idr0xglgr3bzv6r/AAC2aMjvXHJ-Wgq7iSbQ3R2ha?dl=0
[slides]: https://github.com/emdupre/hd4630_workshops/blob/master/slides/hd4630-workshop-ii.pdf


