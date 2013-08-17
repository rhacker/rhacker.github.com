---
layout: post
title: "How to analyze php's code using HipHop-PHP"
date: 2013-05-07 21:45
comments: true
categories: php
---

Maintaining MagePlus - a better version of Magento CE is a fun experience. Because it's a big code base with a lot of minor bugs and errors but it still works .... This is not
something unexpected from a big codebase like Magento since it was not developed with
a well tested and testable code. But what really interests me is how we can
analyze minor bugs like syntax and typo errors fast. **@rlerdorf** - one of the
contributor of Mageplus has a simple command from hiphop-php to save the world:

<pre><code class="language-javascript">
hhvm --hphp -t analyze
</code></pre>

<pre><code class="language-javascript">
--------------------------------
File       : lib/Mage/Connect/Loader/Ftp.php:98
Reason     : UseUndeclaredVariable
Snippet    : $out
Line       : return $out;

--------------------------------
File       : lib/Mage/Connect/Packager.php:293
Reason     : UseUndeclaredVariable
Snippet    : $cachObj
Line       : $p = $cachObj->getPackageObject($chanName, $package);

--------------------------------
File       : lib/Varien/Db/Tree.php:441
Reason     : UseUndeclaredVariable
Snippet    : $pID
Line       : } elseif ($aId != 0 && $pID == $eInfo[$this->_pid]) { // if we have
after ID
}
</code></pre>

Since I really want to try to install but it comes out that [ hiphop-php is quite hard to install
](http://stackoverflow.com/questions/8132016/how-to-install-hiphop-for-php "How
to install php hiphop") and it's only available for Linux at the moment. Let me know if you
have any other lightweight tool which can do the same thing, I'd be very appreciate about that.

The original post is [on Github](https://github.com/mageplus/mageplus/issues/148#issuecomment-17552004 "List of minor problems found by static analysis").
