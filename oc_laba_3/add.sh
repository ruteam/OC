#!/bin/bash

cd ~/"Рабочий стол"/oc_laba_3/articles
mkdir "$1"

cd "$1"
title=название_статьи.txt
author=автор_статьи.txt
year=год_написания.txt
nap=научное_направление.txt
magazine=научный_журнал.txt

touch $title
echo $1 > $title

touch $author
echo $2 > $author

touch $year
echo $3 > $year

touch $nap
echo $4 > $nap

touch $magazine
echo $5 > $magazine

#----------- авторы статей -----------
cd ~/"Рабочий стол"/oc_laba_3/categories/авторы_статей
DIR=~/"Рабочий стол"/oc_laba_3/categories/авторы_статей/"$2"
if ! [ -d "$DIR" ]; then
	mkdir "$2"
fi
ln -s ~/"Рабочий стол"/oc_laba_3/articles/"$1" ~/"Рабочий стол"/oc_laba_3/categories/авторы_статей/"$2"

#----------- годы написания -----------
cd ~/"Рабочий стол"/oc_laba_3/categories/годы_написания
DIR=~/"Рабочий стол"/oc_laba_3/categories/годы_написания/"$3"
if ! [ -d "$DIR" ]; then
	mkdir "$3"
fi
ln -s ~/"Рабочий стол"/oc_laba_3/articles/"$1" ~/"Рабочий стол"/oc_laba_3/categories/годы_написания/"$3"

#----------- научные направления -----------
cd ~/"Рабочий стол"/oc_laba_3/categories/научные_направления
DIR=~/"Рабочий стол"/oc_laba_3/categories/научные_направления/"$4"
if ! [ -d "$DIR" ]; then
	mkdir "$4"
fi
ln -s ~/"Рабочий стол"/oc_laba_3/articles/"$1" ~/"Рабочий стол"/oc_laba_3/categories/научные_направления/"$4"

#----------- научные журналы -----------
cd ~/"Рабочий стол"/oc_laba_3/categories/научные_журналы
DIR=~/"Рабочий стол"/oc_laba_3/categories/научные_журналы/"$5"
if ! [ -d "$DIR" ]; then
	mkdir "$5"
fi
ln -s ~/"Рабочий стол"/oc_laba_3/articles/"$1" ~/"Рабочий стол"/oc_laba_3/categories/научные_журналы/"$5"