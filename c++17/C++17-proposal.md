<table>
<tr>
  <td align="left">Doc. no.:</td>
  <td align="left"><span style="background-color:yellow">D0218R0</span></td>
</tr>
<tr>
  <td align="left">Date:</td>
  <td align="left">016-02-12</td>
</tr>
<tr>
  <td align="left">Reply to:</td>
  <td align="left">Beman Dawes &lt;bdawes at acm dot org&gt;
</tr>
<tr>
  <td align="left">Audience:</td>
  <td align="left">Library, Filesystem</td>
</tr>
</table>

Adopt the File System TS for C++17
==================================

Introduction
------------

Technical work on [N4100, *File System Technical Specification*][1], ISO/IEC TS 18822:2015, was completed in July 2014, and published by ISO in July 2015. There are three shipping implementations and one soon-to-ship implementation. Two of the shipping implementations have been have been in use for several years.

This document proposes adopting the File System Technical Specification, with corrections, for C++17.

The alternative to this proposal is to start work on version two of the File System TS. Doing nothing is not an alternative.

### ISO/IEC Abstract for the Technical Specification

>ISO/IEC TS 18822:2015 specifies requirements for implementations of an interface that computer programs written in the C++ programming language may use to perform operations on file systems and their components, such as paths, regular files, and directories. This Technical Specification is applicable to information technology systems that can access hierarchical file systems, such as those with operating systems that conform to the POSIX (3) interface. This Technical Specification is applicable only to vendors who wish to provide the interface it describes.   

Implementation and Use Experience
---------------------------------

* **Boost** Has been shipping versions of the [Boost Filesystem Library][2] since 2003.
* **Microsoft/Dinkumware** Began shipping the [TS version with Visual C++ 2015][3]. Previously shipped a version based on the TR1 proposal with VC++ 2012 and VC++ 2013.
* **libstdc++** Began shipping with [gcc-5.3][7] in 2015.
* **libc++** [Implemented][4], but not yet shipping. 

## Pending Issues and Proposals

The pending issues and proposals described below should be resolved by LWG in the next meeting or two, and do not block adopting the Filesystem TS for C++17.

### Pending issues

There are twelve open Filesystem issues in the LWG Active Issues list. Ten have proposed resolution text. Most of the issues involve standardese corrections or clarifications and require no change to implementations or user code.

### Pending proposals

LWG issue 2611 (aka SG3 issue 11), *Lack of relative() operation function*, is a *NAD Future* issue raised by UK PDTS comment GB-1. Two solutions have been proposed &mdash; [P0011R0, *Additions to Filesystem supporting Relative Paths*][5] and [P0218R0, *Relative Paths for Filesystem*][6]. The authors are working together to finalize a single proposal for the Jacksonville meeting.

## Hosted implementations only

No change is proposed for the C++ working paper's table of "C++ headers for freestanding implementations" in 17.6.2.2 Headers [using.headers]. This means that header filesystem is only required for hosted implementations. See C++ 1.4 Implementation compliance [intro.compliance].

Proposed C++17 Wording
----------------------

The proposed wording below is unchanged from the [File System TS wording][1], except for section renumbering and changes shown with <del>delete</del> and <ins>insert</ins> tags. A table of contents is provided for convenience, but is not part of the proposed wording.

<span style="background-color:lightgrey">*Editorial comments are shown in italics with a light gray background.*</span>

### Wording table of contents

<!-- include "wp.html" snippet=wpwordingTOC -->TOC goes here<!-- end include --> 

### Proposed Wording

<span style="background-color:lightgrey">*Add the following as a new sub-clause at the end of clause 27, Input/output library:*</span>

<!-- include "wp.html" snippet=wpwording -->proposed wording goes here<!-- end include -->

Acknowledgements
----------------

Thanks to Eric Fiselier, Stephan T. Lavavej, P.J. Plauger, and Jonathan Wakely for their work on implementations, and for reporting issues based on their experience.

Thanks to Jamie Allsop and Nicolai Josuttis for teasing out the details of the relative path problem, and proposing a solution.

References
----------

[1]: www.open-std.org/jtc1/sc22/wg21/docs/papers/2014/n4100.pdf
[2]: www.boost.org/doc/libs/1_60_0/libs/filesystem/doc/index.htm
[3]: msdn.microsoft.com/en-us/library/hh874694.aspx
[4]: github.com/efcs/filesystem-standalone
[5]: www.open-std.org/jtc1/sc22/wg21/docs/papers/2015/p0011r0.html
[6]: www.open-std.org/jtc1/sc22/wg21/docs/papers/2016/p0218r0.html
[7]: gcc.gnu.org/gcc-5/

&lsqb;<a name="1">1</a>&rsqb; Beman Dawes, [N4100, Programming Languages — C++ — File System Technical Specification][1], 2014.<br>http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2014/n4100.pdf 

&lsqb;<a name="2">2</a>&rsqb; Beman Dawes, others, [Boost Filesystem Library, V3][2], 2015.<br>https://www.boost.org/doc/libs/1_60_0/libs/filesystem/doc/index.htm 

&lsqb;<a name="3">3</a>&rsqb; Microsoft, [&lt;filesystem&gt; (v3), Visual Studio 2015][3], 2015.<br>https://msdn.microsoft.com/en-us/library/hh874694.aspx 

&lsqb;<a name="4">4</a>&rsqb; Eric Fiselier, [Experimental work on the standard filesystem proposal][4], 2014.<br>https://github.com/efcs/filesystem-standalone 

&lsqb;<a name="5">5</a>&rsqb; Jamie Allsop, Nicolai Josuttis,	[P0011R0, Additions to Filesystem supporting Relative Paths][5], 2015.<br>http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2015/p0011r0.html

&lsqb;<a name="6">6</a>&rsqb; Beman Dawes, [P0218R0, Relative Paths for Filesystem][6], 2016.<br>http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2016/p0218r0.html

&lsqb;<a name="7">7</a>&rsqb; GNU, [GCC 5 Release Series][7], 2016.<br>https://gcc.gnu.org/gcc-5/

---
