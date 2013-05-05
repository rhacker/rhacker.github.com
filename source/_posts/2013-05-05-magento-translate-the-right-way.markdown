---
layout: post
title: "Magento - translate the right way"
date: 2013-05-05 19:11
comments: true
categories: magento
---

There are two sources of translation in magento:

1. one is saved in `core_translate` table. This will be created when you use
   inline translation.
2. the other is saved in CSV.

###Database's inline translation cons:

1. tranlsated text is limit to 255 characters by default
2. if you have the same translation of one text in the `core_translate` table and csv file, magento
will pick the table's one which is very frustrated when you are working with csv
translation and you don't know why it doesn't work.

###CSV's translation pros

1. Portability. This is important because it's a big chance that you will reuse
   this translation in another magento setup.
2. User friendly. I always hand my csv translation to my translator and she/he
   will take care of its content. So it should be something easier for them to
   work with and csv editing is easy.

So the best workflow is turning on the inline translation and gets the original
text there and put it into your csv file. If you work this way, everything works
beautifully and more importantly in a correct way.
Teach your translators and help them working the right way together, everyone benefits from it.
