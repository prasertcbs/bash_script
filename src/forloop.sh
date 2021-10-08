#!/usr/bin/env bash

# Bash script
# Topic: for loop
# Author: Prasert Kanawattanachai
# Last updated: 2021-10-05
# GitHub: https://github.com/prasertcbs
# YouTube: https://www.youtube.com/prasertcbs

for counter in 1 2 3 4 5; do
    echo $counter
done

# brace expansion {1..5}
for counter in {1..5}; do
    echo $counter
done

# brace expansion {A..F}
for c in {A..F}; do
    echo $c
done

# {start..stop..step}
for counter in {1..10..2}; do
    echo $counter
done

for counter in {10..0..-2}; do
    echo $counter
done

# count down
for counter in {5..0..-1}; do
    echo $counter
    sleep 1s # sleep for 1 second
    echo '----'
done
echo 'take off ^^^^^'

# simple multiplication table
for i in {1..12}; do
    m=$((2 * i))
    echo "2 x ${i} = ${m}"
done

# multiplication table
n=12
for i in {1..12}; do
    m=$((n * i))
    # echo "${n} x ${i} = ${m}"
    printf "%3d x %3d = %3d\n" $n $i $m
done

# work with strings
for f in lily carnation 'forget me not' tulip; do
    echo $f
done

# iterate array element
flowers=(lily carnation 'forget me not' tulip)
for f in "${flowers[@]}"; do
    echo $f
done

# iterate files
echo -e "rose\nlily\ncarnation\ntulip" >flower.txt
for f in cats.txt dogs.txt flower.txt; do
    head -n2 "$f"
    echo '-----------'
done

# use 'curl' to download pokemon images
url="https://assets.pokemon.com/assets/cms2/img/pokedex/full/"
for i in $(cat get_them.txt); do
    echo $i
    s="${i}.png"
    curl -O "${url}${s}"
done

# convert png to webp
for i in $(cat get_them.txt); do
    echo $i
    f="${i}.png"
    ffmpeg -i "$f" "${f%png}webp"
done

# convert RGB png to gray scale image
for f in *.png; do
    ffmpeg -i "$f" -vf format=gray "gray_$f"
done

# nested loop
for suit in S H D C; do
    for rank in A 2 3 4 5 6 7 8 9 10 J Q K; do
        echo -n "${rank}${suit} "
    done
    echo
done
