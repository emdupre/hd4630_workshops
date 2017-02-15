---
layout: post
title:  "Installing Xming on Windows"
date:   2017-02-07 12:05:35 -0500
categories: ['Getting Started']
---

After you've installed Docker or Docker Toolbox, you'll also need to install an X11 system; this will let us see the output for each of our analyses in AFNI. If you're on a Windows, you'll need to install [Xming](https://sourceforge.net/projects/xming/){:target="_blank"}. 

Follow the setup instructions provided with the installation, then open XLaunch. We need to change our settings for Xming to turn off access control. Clicking though XLaunch, you should have the following options selected:

![Xming_Screenshot1](/hd4630_workshops/assets/Xming_Display.png)

![Xming_Screenshot2](/hd4630_workshops/assets/Xming_Client.png)

![Xming_Screenshot3](/hd4630_workshops/assets/Xming_Access.png)

Finally, restart your computer to make sure all of the settings take effect. Once you log back in, we can start downloading the data! We'll cover that in the next post.