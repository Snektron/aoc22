#!/usr/bin/env jconsole
file =. 2{ARGV
input =. 1!:1@boxopen file
q =. (LF,LF) splitstring input
F =: monad : '".>(LF cut (>y))'
p =. F each q
r =. >+/ each p
echo 'part1'; >./>r
echo 'part2'; +/ 3 {. \:~ r
exit''
