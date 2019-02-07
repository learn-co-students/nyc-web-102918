Linux and the Command Line
==========================

```
You need to change a computer and it's 500 miles away.
What do you do?
```

## Overview

* The Cloud
* Computers & Operating Systems
* The Linux Ecosystem
* SSH
* Enter The Shell
* Command Line Scripting

## Lecture Notes

### The Cloud ☁️

What is it?

> It's just someone else's computer.

### Computers & Operating Systems

![operating-system-diagram][operating-system-diagram]

* hardware
  * CPU, RAM, HDD, BUSes, etc.
  * firmware
* operating system
  * kernel
    * monolithic / micro / hybrid
    * drivers
      * modules
    * resources (memory, cpu, etc.)
    * scheduler (cpu, processes)
    * system calls
    * kernel space vs user space
  * shell / desktop environment
    * text (CLI) vs graphical (GUI)
      * Windowing System (X11, Wayland, Mir)
    * terminal
    * window manager
    * panel
* application
* user

![kernel-diagram][kernel-diagram]

**Types of Kernels**

* UNIX
  * "device as a file" concept
    * [Unix Philosophy][unix-philosophy] => composability over monolithic design
  * BSD
  * macOS => XNU => Darwin
    * hybrid
* Linux
  * Linus Torvalds
  * What is GNU/Linux???!?!?!?!
    * All dem software from the GNU Project => Richard Stallman
  * monolithic w/ modules
* Windows
  * Windows NT, Windows ME, etc.
  * hybrid
* GNU Hurd
  * micro

_So why Linux?_

* open source
* kernel can be made super small (embedded devices)
* servers
* desktop

But what about?
* BSD
* Solaris

Useful things to know:

* [Filesystem Layout][linux-filesystem]
* Users & Groups
* Permissions
  * read / write / execute
  * user => group => other
  * rwe     rw       r
* hostname / hosts

### The Linux Ecosystem

Brief overview of examples.

**Distributions**

* Debian
* Ubuntu
  * desktop editions
  * Linux Mint
* Red Hat Enterprise Linux (RHEL)
  * Fedora
* openSUSE
* Gentoo / Linux From Scratch
* Arch Linux
  * Manjaro
* Alpine Linux

**Differentiating Factors**

* Server Editions
* Long Term Support (LTS)
* Desktop Environments
  * GNOME
  * KDE
  * Unity
  * Cinnamon
  * Pantheon
  * Tiling Window Managers
    * i3, awesome, xmonad
  * Compiz vs KWin
* Package Managers
  * dpkg (via apt/apt-get/aptitude)
  * RPM (dnf, yum, zypper)
  * pacman
  * Flatpack, Snappy
  * Note:
    * macOS =>  App Store, Homebrew, MacPorts
    * Windows => NuGet, Chocolatey
    * Android => Google Play, F-Droid
    * iOS => App Store

### SSH

So how can we get onto one of these computers?

Enter [Secure Shell][ssh-wikipedia] (aka: SSH). Your portal into other computers.

[How Secure Shell Works - Computerphile][how-ssh-works-computerphile]

* password vs key
  * [public-key cryptography][pub-key-wikipedia]
* SFTP
* SCP
* SSHFS

### Enter The Shell

> In general, operating system shells use either a command-line interface (CLI) or graphical user interface (GUI), depending on a computer's role and particular operation. It is named a shell because it is the outermost layer around the operating system kernel.
> Source: [Shell (computing)][shell-wikipedia]

[List of Shells][shell-list]

* Bourne shell (sh)
  * Bash (bash)
    * The most common; default on almost all Unix OSes.
  * Korn shell (ksh)
    * Z shell (zsh)
* Friendly interactive shell (fish)
* [Shell vs Terminal vs TTY vs Console vs etc etc etc][term-sh-tty-con]
  * screen
  * tmux

[POSIX][posix]

[Environment Variables][environment-variables]

* PATH
* HOME
* PWD
* locale => LANG, LC_ALL, etc.

### Command Line Scripting

> Think of it all as glue.

Learning about the CLI via [Linux Journey][linux-journey]...

Common Commands / Tools
* echo, ls, pwd, cd, mv, etc..........

Input Redirection / Piping
* stdin, stdout, stderr
* >
  * redirection operator that allows us the change where stdout goes
* >>
  * redirection operator for stdout but for appending
* <
  * redirection operator for stdin
* 2>
  * redirection operator for stderr
* 2>&1 OR &>
  * redirection operator for both stderr and stdout
  * /dev/null
* |
  * pipe => take stdout and make it stdin for next command
* tee
  * | tee => stream stdout to both stdout and another place

Control Flow
* &&, ||
* if
* loops

Scripting

Editors
* nano
* vi / vim
* emacs

[kernel-diagram]: https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Kernel_Layout.svg/1280px-Kernel_Layout.svg.png
[operating-system-diagram]: https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Operating_system_placement.svg/405px-Operating_system_placement.svg.png
[unix-philosophy]: https://en.wikipedia.org/wiki/Unix_philosophy
[linux-filesystem]: https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard
[shell-wikipedia]: https://en.wikipedia.org/wiki/Shell_(computing)
[shell-list]: https://en.wikipedia.org/wiki/List_of_command-line_interpreters
[environment-variables]: https://en.wikipedia.org/wiki/Environment_variable
[term-sh-tty-con]: https://unix.stackexchange.com/questions/4126/what-is-the-exact-difference-between-a-terminal-a-shell-a-tty-and-a-con
[posix]: https://en.wikipedia.org/wiki/POSIX
[ssh-wikipedia]: https://en.wikipedia.org/wiki/Secure_Shell
[pub-key-wikipedia]: https://en.wikipedia.org/wiki/Public-key_cryptography
[how-ssh-works-computerphile]: https://www.youtube.com/watch?v=ORcvSkgdA58
[linux-journey]: https://linuxjourney.com/
