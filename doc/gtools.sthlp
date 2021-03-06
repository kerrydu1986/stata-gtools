{smcl}
{* *! version 0.8.1 26Oct2017}{...}
{viewerdialog gtools "dialog gtools"}{...}
{vieweralsosee "[R] gtools" "mansection R gtools"}{...}
{viewerjumpto "Syntax" "gtools##syntax"}{...}
{viewerjumpto "Description" "gtools##description"}{...}
{viewerjumpto "Options" "gtools##options"}{...}
{title:Title}

{p2colset 5 18 23 2}{...}
{p2col :{cmd:gtools} {hline 2}}Manage {opt gtools} package installation.{p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:Syntax}

{pstd}
{opt gtools} is a suite of commands that use hashes for a speedup over
traditional stata commands. The following are available as part of gtools:

{p 8 17 2}
{manhelp gcollapse R:gcollapse} {opt collapse} replacement. {p_end}

{p 8 17 2}
{manhelp gegen R:gegen} {opt egen} alternative. {p_end}

{p 8 17 2}
{manhelp gisid R:gisid} {opt isid} replacement. {p_end}

{p 8 17 2}
{manhelp glevelsof R:glevelsof} {opt levelsof} replacement. {p_end}

{p 8 17 2}
{manhelp gunique R:gunique} Count unique levels of a set of variables. {p_end}

{p 8 17 2}
{manhelp hashsort R:hashsort} (Experimental.) Hash-based sorting. {p_end}

{pstd}
{it:Note for Windows users}: Please run {opt gtools, dependencies} before
using any of the programs provided by gtools. The {opt gtools} command
is merely a wrapper for some high-level operations to do with package
maintenance.

{p 8 17 2}
{cmd:gtools}
[{cmd:,} {it:{help gtools##table_options:options}}]

{synoptset 15 tabbed}{...}
{marker table_options}{...}
{synopthdr}
{synoptline}
{syntab :Options}
{synopt :{opt d:ependencies}}Install dependencies (requried in Windows).
{p_end}
{synopt :{opt u:pgrade}}Install latest version from Github.
{p_end}
{synopt :{opt i:nstall_latest}}alias for {opt upgrade}.
{p_end}
{synopt :{opt replace}}Replace dependencies if already found.
{p_end}
{synopt :{opt dll}}Add the assumed path to {it:spookyhash.dll} to the system {opt PATH} (Windows)
{p_end}
{synopt :{opth hashlib(str)}}Custom path to {it:spookyhash.dll}.
{p_end}

{synoptline}
{p2colreset}{...}
{p 4 6 2}

{marker description}{...}
{title:Description}

{pstd}
{opt gtools} is a Stata package is a Stata package that provides a fast
implementation of common group commands like collapse, egen, isid, and
levelsof using C plugins for a massive speed improvement. This program helps
the user manage their gtools installation. While unnecessary in Linux, when
trying to compile the plugin on Windows it became apparent that I would
need to include a DLL with the package (in particular the DLL for the hash
library). While I try to do this automatically, I run into enough problems
while developing the plugin that I felt compelled to include this program.

{marker options}{...}
{title:Options}

{dlgtab:Options}

{phang}
{opt dependencies} Installs the hash library, {it:spookyhash.dll}, which
is required for the plugin to execute correctly.

{phang}
{opt upgrade} Upgrades {opt gtools} to the latest github version.

{phang}
{opt install_latest} Alias for {opt upgrade}.

{phang}
{opt replace} Replace {it:spookyhash.dll} if already installed.

{phang}
{opt dll} Add path to {it:spookyhash.dll} to system path.

{phang}
{opth hashlib(str)}Custom path to {it:spookyhash.dll}.

{marker author}{...}
{title:Author}

{pstd}Mauricio Caceres{p_end}
{pstd}{browse "mailto:mauricio.caceres.bravo@gmail.com":mauricio.caceres.bravo@gmail.com }{p_end}
{pstd}{browse "https://mcaceresb.github.io":mcaceresb.github.io}{p_end}

{title:Website}

{pstd}{cmd:gtools} is maintained at {browse "https://github.com/mcaceresb/stata-gtools":github.com/mcaceresb/stata-gtools}{p_end}


{marker acknowledgment}{...}
{title:Acknowledgment}

{pstd}
This project was largely inspired by Sergio Correia's {it:ftools}:
{browse "https://github.com/sergiocorreia/ftools"}.
{p_end}

{pstd}
The OSX version of gtools was implemented with invaluable help from @fbelotti;
see {browse "https://github.com/mcaceresb/stata-gtools/issues/11"}.
{p_end}
