---
layout: post
title: "Always use CDN"
date: 2013-01-06 21:17
comments: false
categories:
---

Instead of having your own version of bootstrap or jquery on your localhost, you
should use provided Content Delivery Network - CDN instead.

###Why ?
1. Boost your website speed. If we have same site A and B using the same jquery
from Google CDN, so if they visit one of their site, the browser will not
download the lib again in the other since it is cached by browser. And CDN like
Google or NetDNA are already out there for long time, so if your site uses same
CDN, your customers do not have to download that lib again, and it saves one
http request per lib so it is faster.

2. Boosting your development speed.
You do not have to download libs everytime you bootstrap your project. Just make
a good template and then start making thing. If you work mostly with angularJS
or backbone, just create a template then `git clone`. Bump, done !

###Disadvantage
What if the CDN server is down, you are talking about Google and big guy like
NetDNA. Their down time is really low which is close to 1% or 0%:

NetDNA : status
http://www.bootstrapcdn.com/uptime.html

But it is dependable, some big companies combines all the script together to one
file so it only takes one http request. Beside their network is
fast and most of them are core of the internet.

For the small and medium companies, it is best to use CDN in my opinion. Because
it is
fast to bootstrap your project, it is lightweight so the only thing you need to
do is copy and paste.

Beside using the library, you can setup your own CDN to handle all static
files.

###Popular CDN
Google CDN: https://developers.google.com/speed/libraries/devguide

bootstrapcdn: http://www.bootstrapcdn.com/

cdnjs: http://cdnjs.com/
