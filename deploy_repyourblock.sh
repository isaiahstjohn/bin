#!/bin/bash
HOME="/home/istjohn"
NOW=`date '+%s'`
PUBLIC="/var/www/repyourblock2020.org/public_html"
mkdir $HOME/$NOW
cd $HOME/$NOW
git clone git@github.com:isaiahstjohn/repyourblock
mv "${PUBLIC}/img" .
rm -rf ${PUBLIC}/*
mv repyourblock/www/* $PUBLIC
mv img $PUBLIC
cd $HOME
rm -rf $NOW

