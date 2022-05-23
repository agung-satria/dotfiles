//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	/* {"",   "sb-mpdcontrol",	       1,		16}, */
	/* {"",   "sb-mpdprev",	       1,		12}, */
	/* {"",   "sb-mpdplay",	       1,		13}, */
	/* {"",   "sb-mpdnext",	       1,		14}, */
	{"",   "sbb-mpdicon",	       5,		16},
	/* {"",   "sb-forecast",	         120,		12}, */
	{"",   "sbb-nettraf",	          1,		4},
	{"",   "sbb-battery",	          1,		3},
	/* {"",   "volbar",            0,		1}, */
	/* {"",   "volume",	          0,		1}, */
	{"",   "sbb-volume",	        0,		1},
	{"",   "sbb-brightperc",        0,		2},
	{"",   "sbb-cpuusage",          2,		5},
	{"",   "sbb-memory",	          3,		6},
	/* {"",   "sb-cputemp",	          5,		7}, */
	{"",   "sbb-diskusage",	        3,		8},
	{"",   "sbb-neticon",	          1,	  9},
	{"",   "sbb-clock",	            60,		10},
	{"",   "sbb-wifi",	            3,		11},
	{"",   "sbb-help-icon",	    0,		15},

};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char *delim = " ";

// Have dwmblocks automatically recompile and run when you edit this file in
// vim with the following line in your vimrc/init.vim:

// autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
