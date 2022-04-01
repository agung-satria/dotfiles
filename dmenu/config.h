
/*       _ __ ___  ___ (_) ___| |__   ___       */
/*      | '_ ` _ \/ __|| |/ __| '_ \ / _ \      */
/*      | | | | | \__ \| | (__| | | |  __/      */
/*      |_| |_| |_|___// |\___|_| |_|\___|      */
/*                   |__/                       */
/*            MoJo's dmenu config               */

/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
//    "Dejavu San Mono for Powerline:size=12",
//    "JoyPixels:size=12:antialias=true:autohint=true",
    "JetBrains Mono Nerd Font:size=14:antialias=true:autohint=true",
};
static const unsigned int bgalpha = OPAQUE;
static const unsigned int fgalpha = OPAQUE;
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#bbbbbb", "#222222" },
	//[SchemeSel] = { "#eeeeee", "#769c39" }, //nature.h
	[SchemeSel] = { "#eeeeee", "#005577" }, //cyandwm.h
//  [SchemeSel] = { "#333333", "#62bef3" }, //my prev scheme
	[SchemeSelHighlight] = { "#ffde66", "#333333" },
	[SchemeNormHighlight] = { "#9c7a00", "#333333" },
	[SchemeOut] = { "#000000", "#00ffff" },
};
static const unsigned int alphas[SchemeLast][2] = {
	/*		fgalpha		bgalphga	*/
	[SchemeNorm] = { fgalpha, bgalpha },
	[SchemeSel] = { fgalpha, bgalpha },
	[SchemeOut] = { fgalpha, bgalpha },
};

/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
//static unsigned int lines = 30;
static unsigned int lines = 15;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

/* Size of the window border */
static const unsigned int border_width = 2;
