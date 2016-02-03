<table>
<tr>
  <td align="left">Doc. no.:</td>
  <td align="left"><span style="background-color:yellow">DnnnnR0</span></td>
</tr>
<tr>
  <td align="left">Date:</td>
  <td align="left"><span style="background-color:yellow">2016-01-25</span></td>
</tr>
<tr>
  <td align="left">Project:</td>
  <td align="left">Programming Language C++</td>
</tr>
<tr>
  <td align="left" valign="top">Reply to:</td>
  <td align="left">Beman Dawes &lt;bdawes at acm dot org&gt;</br>
</table>
Adopt the File System TS for C++17
==================================

Introduction
------------

Technical work on the *File System Technical Specification*, ISO/IEC TS 18822:2015, was completed in July 2014, and published by ISO in July 2015. There are three shipping implementations and one soon-to-ship implementation. Two of the shipping implementations have been have been in use for several years.

This document proposes adopting the File System Technical Specification, with corrections, for C++17.

### ISO/IEC Abstract for the Technical Specification

>ISO/IEC TS 18822:2015 specifies requirements for implementations of an interface that computer programs written in the C++ programming language may use to perform operations on file systems and their components, such as paths, regular files, and directories. This Technical Specification is applicable to information technology systems that can access hierarchical file systems, such as those with operating systems that conform to the POSIX (3) interface. This Technical Specification is applicable only to vendors who wish to provide the interface it describes.   

Implementation and Use Experience
---------------------------------

* **Boost** Has been shipping versions of the Boost Filesystem Library since 2003.
* **Microsoft/Dinkumware** Began shipping the TS version with Visual C++ 2015. Previously shipped a version based on the TR1 proposal with VC++ 2012 and VC++ 2013.
* **libstdc++** Began shipping with gcc-5.3 in 2015.
* **libc++** Implemented, but not yet shipping. 

Pending Changes
---------------

### Pending issues

There are twelve open Filesystem issues in the LWG Active Issues list. Ten have proposed resolution text. Most of the issues involve standardese corrections or clarifications and require no change to implementations or user code. These issues should be resolved by LWG before shipping C++17, either before or after accepting this proposal.

### Pending proposals

LWG issue 2611 (aka SG3 issue 11), *Lack of relative() operation function*, is a *NAD Future* issue raised by UK PDTS comment GB-1. Two very similar but competing solutions have been proposed. The LWG will decide which, if either, is preferred. The outcome has no direct effect on this proposal.  

### Pending concerns

Proposed C++17 Wording
----------------------

The proposed wording below was copied unchanged from the File System TS wording, and then suggested changes shown using <del>delete</del> and <ins>insert</ins> tags. Clause numbering was updated on the assumption that the wording will appear in the C++ working paper as a new sub-clause at the end of clause 27, *Input/output library*. A table of contents has been provided for convenience. The project editor may revised location and content editorially.

### Proposed Wording

<!-- include "wp.html" snippet=snip -->

Acknowledgements
----------------

Thanks to Eric Fiselier, Stephan T. Lavavej, PJ Plauger, and Jonathan Wakely for their work on implementations, and for reporting issues based on their experience.

Thanks to Jamie Alsop and Nicolai Josuttis for teasing out the details of the relative path problem, and proposing a solution.

References
----------

[1]: www.open-std.org/jtc1/sc22/wg21/docs/papers/2014/n4100.pdf
[2]: www.boost.org/doc/libs/1_60_0/libs/filesystem/doc/index.htm
[3]: msdn.microsoft.com/en-us/library/hh874694.aspx
[4]: github.com/efcs/filesystem-standalone
[5]: www.open-std.org/jtc1/sc22/wg21/docs/papers/2015/p0011r0.html
[6]: www.open-std.org/jtc1/sc22/wg21/docs/papers/2016/p????r0.html

&lsqb;<a name="1">1</a>&rsqb; Beman Dawes, [N4100, Programming Languages — C++ — File System Technical Specification][1], 2014. 

&lsqb;<a name="2">2</a>&rsqb; Beman Dawes, others, [Boost Filesystem Library, V3][2], 2015. 

&lsqb;<a name="3">3</a>&rsqb; Microsoft, [&lt;filesystem&gt; (v3), Visual Studio 2015][3], 2015. 

&lsqb;<a name="4">4</a>&rsqb; Eric Fiselier, [Experimental work on the standard filesystem proposal][4], 2014. 

&lsqb;<a name="5">5</a>&rsqb; Jamie Alsop, Nicolai Josuttis,	[P0011R0, Additions to Filesystem supporting Relative Paths][5], 2015.

&lsqb;<a name="5">5</a>&rsqb; Beman Dawes,	[<span style="background-color:yellow">P????R0, Filesystem Relative Path Proposal</span>][5], 2016.

---
