#!/usr/bin/env jconsole
file =. 2{ARGV
in =. fread file
m =: '_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
F =: monad :'2^.(17 b.)/(23 b.)/ |: 2^m i. (2, -:#y) $ y'
echo 'part1'; +/ >F each cutopen in

G =: monad : '(23 b.)/ |: 2^ m i. y'
q =. >G each cutopen in

echo 'part2'; +/ 2 ^. (17 b.)/ |: (((#q)%3),3) $ q
exit ''
