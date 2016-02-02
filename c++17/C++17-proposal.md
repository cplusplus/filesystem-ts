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

The *File System Technical Specification*, ISO/IEC TS 18822:2015, was completed by the C++ committee in July 2014, and published by ISO in July 2015. There are three shipping implementations and one more soon-to-be shipped. This document proposes adopting the technical content of the File System TS for C++17.

### Abstract for the Technical Specification

>ISO/IEC TS 18822:2015 specifies requirements for implementations of an interface that computer programs written in the C++ programming language may use to perform operations on file systems and their components, such as paths, regular files, and directories. This Technical Specification is applicable to information technology systems that can access hierarchical file systems, such as those with operating systems that conform to the POSIX (3) interface. This Technical Specification is applicable only to vendors who wish to provide the interface it describes.   

Implementation and Use Experience
---------------------------------

* **Boost** Has been shipping versions of Filesystem since 2003.
* **Microsoft/Dinkumware** Began shipping with Visual C++ 2015. Had previously been shipping a version based on the TR1 proposal.
* **libstdc++** Began shipping with gcc-5.3.
* **libc++** <span style="background-color:yellow">Implemented, but not shipping yet.</span> 

Pending Changes
---------------

### Pending issues

There are twelve open TS issues in the LWG Active Issues list. Ten have proposed resolution text.

### Pending proposals

### Pending concerns

Proposed Working Paper Wording
------------------------------

### Summary

### Proposed Wording

Acknowledgements
----------------

References
----------

[1]: www.open-std.org/jtc1/sc22/wg21/docs/papers/2014/n4100.pdf
[2]: www.boost.org/doc/libs/1_60_0/libs/filesystem/doc/index.htm
[3]: msdn.microsoft.com/en-us/library/hh874694.aspx
[4]: github.com/efcs/filesystem-standalone

&lsqb;<a name="1">1</a>&rsqb; Beman Dawes, [Programming Languages — C++ — File System Technical Specification][1], 2014. 

&lsqb;<a name="2">2</a>&rsqb; Beman Dawes, others, [Boost Filesystem Library, V3][2], 2015. 

&lsqb;<a name="3">3</a>&rsqb; Microsoft, [&lt;filesystem&gt; (v3), Visual Studio 2015][3], 2015. 

&lsqb;<a name="4">4</a>&rsqb; Eric Fiselier, [Experimental work on the standard filesystem proposal][4], 2014. 


---
