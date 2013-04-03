# ListInt

**ListInt** is a simple Perl script that generates arbitrary lists of integers.

### Usage

**ListInt** requires _Getopt::Long_ and can be executed by providing two integers and running `perl listint.pl {FROM} {TO} [OPTIONS]`.

It automatically detects whether the user wants an ascending or descending list and provides options to print only even (`-e`) or odd (`-o`) numbers. Furthermore, user-defined strings can be added as prefix (`-p {PREFIX}`) and suffix (`-s {SUFFIX}`) for all the numbers in the list.

Following is the complete help for **ListInt**.

	Usage: perl intgen.pl {FROM} {TO} [OPTIONS]
	OPTIONS
	    -e, -even : print only even numbers
	    -o, -odd  : print only odd numbers
	    -p, -prefix {PREFIX} : add a prefix to the numbers
	    -s, -suffix {SUFFIX} : add a suffix to the numbers

## Copyright

Copyright (c) 2013 Giovanni Cattani.

**ListInt** is released under [The MIT License](http://www.opensource.org/licenses/mit-license.php).