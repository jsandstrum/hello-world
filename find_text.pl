#!/usr/bin/perl
# print out lines that include text form script line 18


use strict;
use warnings;

my $inFile = shift; 
(my $outFile = "$inFile")  =~ s/\.[^.]+$//;
(my $outFile2 = "$outFile\_filtered.txt");

open (IN, '<',$inFile);
open (OUT, '>',$outFile2);  #creates output file
my %duplicates;

while (<IN>) {
   chomp(my $line = $_);
   if ($line =~ /St. Johns/){
     print OUT $line,"\n";;
   }


}

close IN;
close OUT;