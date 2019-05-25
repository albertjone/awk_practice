#!/bin/bash

awk '
function hello(){
    printf "Hello %s\n", $1}
BEGIN {FS=":"}
{hello()}' passwd