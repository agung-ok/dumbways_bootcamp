<?php
/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
function array_in_string($str, array $arr) {
    foreach($arr as $arr_value) { 
        if (strpos($str,$arr_value) !== false) return true; 
    }
    return false;
}

$dataKey = array('dumb','ways','the','best');

$word = 'dumbways';
if (array_in_string($word,$dataKey)) {
	echo "dataKey dan string ada yang sama"; 
}
else {
	echo "dataKey dan string berbeda";
}
