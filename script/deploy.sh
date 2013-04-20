#!/bin/sh

bundle exec rake generate;
bundle exec rake deploy;

open 'http://rhacker.github.io/'