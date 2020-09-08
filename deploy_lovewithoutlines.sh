#!/bin/bash
HOME="/home/istjohn"
NOW=`date '+%s'`
PUBLIC="/var/www/lovewithoutlines.org/public_html"
mkdir $HOME/$NOW
cd $HOME/$NOW
git clone git@github.com:isaiahstjohn/lovewithoutlines.org
mv "${PUBLIC}/img" .
rm -rf ${PUBLIC}/*
mv lovewithoutlines.org/www/* $PUBLIC
mv img $PUBLIC
cd $HOME
rm -rf $NOW

