#!/usr/bin/env jconsole
file =. 2{ARGV
in =. 1!:1@boxopen file
p =. 0 2{|:>(LF cut in)                 NB. transform input into matrix of x y / x y ... and transpose
xs =. 'ABC' i. 0{p                      NB. convert xs to scores: 0 = rock, 1 = paper, 2 = scissors
ys =. 'XYZ' i. 1{p                      NB. convert ys to scores
score =. 0 1 _1 , _1 0 1 ,: 1 _1 0      NB. matrix that returns 1 if rank 0 wins from rank 1, 0 if equal, _1 if lose.
q =. (< "1 |: xs ,: ys) { score         NB. extract the scores from the match.
r =. 1 + ys + 3 * 1 + q                 NB. convert each score to number of points, and add the value of the shape.
echo 'part1'; +/r                       NB. total gives final result.
toplay =. 2 0 1 , 0 1 2 ,: 1 2 0        NB. matrix gives what to play to get the desired outcome.
plays =. (< "1 |: xs ,: ys) { toplay    NB. figure out what to play by looking in the matrix.
q =. (< "1 |: xs ,: plays) { score      NB. look up the score of what to play now.
r =. 1 + plays + 3 * 1 + q              NB. convert to points.
echo 'part2'; +/r                       NB. sum and show results.
exit''
