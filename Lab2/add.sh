echo 'This is addition of a and b'
a=4
b=3

echo '4+3=' 
c=$((a+b))
echo $c

d=`expr $a + $b`
echo $d
