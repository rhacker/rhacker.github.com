---
layout: post
title: "How to open file with custom application in Mac OSX terminal"
date: 2013-01-16 20:33
comments: true
categories: tips
---
I’ve just discovered an useful command to open a file with custom application
in Mac OSX terminal. Normall if we open a file in terminal, we will use open
command, but it does have something more interesting which is -a flag ( think a
as application ). Now I want to open video file with my MplayerX application
instead of Quicktime, I just do this:

```sh
open -a MpalyerX <video-file-path>
```

For the sake of my laziness, I create a simple alias for it:

```sh
mp() { open -a MplayerX $1 } # I'm zsh user
mp <video-file-path>
```
