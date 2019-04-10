#!/usr/bin/perl

use strict;
use warnings;
use Time::Local;

my $epoc = time();
my $debug = 0;
my $ToolName = "SomeTool";
my $ToolVersion = 0.1;
my $SystemTimeZone = `date '+%z'` ;
my $IQuit = 0;

sub GenUserMenu {
    print "\n" ;
    print "\nGeneral options:\n" ;
    print "\tQ/q -- Quit\n" ;
    print "\tT/t -- Test Function\n" ;
    
}

sub GetUserMenuSelection {
    print "\nPlease make a selection: " ;
    my $usrOpt = <STDIN> ;
    chomp ($usrOpt) ;

    if    ($usrOpt =~ /^q$/i) {
        $IQuit = 1 ;
    }
    elsif ($usrOpt =~ /^t$/i) {
        testFunc();
    } else {
        # bad user choice
        print "\nPlease choose from the available options.\n" ;
    }
}

sub testFunc() {
	print STDERR "This is a test function\n";
}



##################################################################################
###
###  MAINLINE
###
##################################################################################


print STDERR "\n$ToolName - version $ToolVersion\n\n" ;

chomp($SystemTimeZone) ;

while ($IQuit == 0) {
    my $g_command_args = "";
    my $arg = "";

    while (defined $ARGV[0]) {
    	my $count = $#ARGV;
        
        $arg=shift @ARGV;
        
        if ($arg =~ /^-var1$/) {
            
        } elsif ($arg =~ /^-var2$/) {            
           
        } else {
	       
        } 
    }
    GenUserMenu();
    GetUserMenuSelection();
}