---
layout: post
title:  "Installing XQuartz on Mac"
date:   2017-02-07 12:05:34 -0500
categories: ['Getting Started']
---

After you've installed Docker or Docker Toolbox, you'll also need to install an X11 system; this will let us see the output for each of our analyses in AFNI. If you're on a Mac OSX, you'll need to install [XQuartz](https://www.xquartz.org/){:target="_blank"}. 

Follow the setup instructions provided with the installation, then open a new XQuartz session. We need to change our preferences for XQuartz, so go ahead and select 'Preferences' on the XQuartz menu.

![XQuartz Preferences](/hd4630_workshops/assets/XQuartz_Preferences.png)

Then click on the 'Security' tab and check the option to "Allow connections from network clients."

![XQuartz Allow](/hd4630_workshops/assets/XQuartz_Allow.png)

Finally, restart your computer to make sure all of the settings take effect. Once you log back in, we can start downloading the data! We'll cover that in the next post.