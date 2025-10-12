# Sirius DOS

![Sirius DOS banner][0]

_A research operating system to endeavour towards **Anodyne**._

-----

This repository provides a collection of tools to quickly and neatly
bootstrap a [**DOSBox-X**][1] session running **Sirius DOS**. Currently,
it provides the following software:
- [Pacific C compiler][2] and IDE (`PPD.EXE`)

Eventually, it will provide the following software:
- Oraci&oacute;n (`ORACION.COM`)
- Feeble C compiler (`FCC.COM`)
- Sirius C\* (`CSTC.COM`)
- Quindle (`QUINDLE.COM`)
- Hinterlib

## Why?

The [Anodyne][3] personal supercomputer project poses a dilemma: with
how conjoined hardware and software are both in theory and in product,
it is hard to significantly improve one without being held back by the
other. Just try installing _Xilinx Vivado_ and marvel at all of the
gigabytes of disk space you will end up needing &ndash; and that&rsquo;s
the minimum required to start making _anything._

The cause of this problem is something programmers are, incidentally,
already familiar with: it&rsquo;s called **coupling**, and it is indeed
a scourge. Even though products continue to climb into the stratosphere
as measured by benchmarks, scientific computing and visual rendering of
3D and video, the experience of using them and programming them has
become severely stunted. One does not simply &ldquo;do whatever&rdquo;
as they could in the 1990s now that programming has become pigeonholed
into existing architectures, paradigms and ways of being.

We have to break this coupling in order to reopen the door to impactful
experimentation. The only way to do that is by solving the catch-22,
hence the creation of Sirius DOS. DOS was chosen as a foundation because
of its widespread use, unassuming architecture that can be expanded upon
easily and its virtue as a period piece of the 1980s and early 1990s
when it was an open question what media formats or instruction sets your
computer might be using. Indeed, even on DOS we will fast be realising
some great innovations&mdash;such as the [software modular memory][4]
technique&mdash;without even having to touch an FPGA.

## How so?

To start, the project will retread [the footprints of Ken Thompson][5]:
1. an editor
2. an assembler
3. a kernel/overlay

In our case, the following software will do these jobs, respectively:
1. Quindle
2. Oraci&oacute;n
3. Hinterlib

But unlike Thompson&rsquo;s original _UNIX&trade;,_ these will not be a
crummy amalgamation of primitive tools. Quindle will be a high-colour
program running up to 1280&times;1024 in resolution with a fully-fledged
virtual terminal and fixed tiling window system, Oraci&oacute;n will be
a modular assembler with instruction encodings and aliases composed in
source files, and Hinterlib will subsume the MS-DOS subsystems already
present while also pulling double duty to converge the programs using it
onto a unified API for both DOS applications and hosted applications on
other systems it supports.

These are just the basics however. With these in hand, the creation of
the so-called &lsquo;developmental quartet&rsquo;&mdash;Inbound,
Outbound, Rebound and Earthbound&mdash;can begin. These tools provide
the rest of the plumbing necessary to develop software products to
completion: build orchestration, software package creation, software
distribution strategies, and finally the procurement of software from
yonder.

## Getting started

Run `util/fetchdst.{bat,sh}` on Windows/Unices respectively. If the
upstream servers dislike the `curl` user agent, your IP address, or some
combination thereof, download it however you may and place the files
manually according to the script contents.

Then run `util/setupdst.{bat,sh}` to extract and configure everything.

Finally, run DOSBox-X with the config file `dosbox-x.conf` &ndash; on
Windows, DOSBox-X can be installed with a shell context menu addition to
open the file in it; in general, one may run it on any command line (or
create a `.lnk` similarly) via the incantation `dosbox-x dosbox-x.conf`.

The setup configured here will drop you into a `C:` drive mounted to the
local relative directory `data/system`, with an _overlay_ of
`data/local` for whatever changes and additions you end up making in use
of the system.

[0]: https://cdn.tohoku.ac/siriusdos-banner.jpg
[1]: https://dosbox-x.com/
[2]: https://cowlark.com/old-compilers/index.html#pacific-c-751-i86
[3]: https://www.nichstack.com/p/anodyne-outline
[4]: https://www.nichstack.com/p/modular-memory-2-electric-boogaloo
[5]: https://www.youtube.com/watch?v=EY6q5dv_B-o&t=1360
