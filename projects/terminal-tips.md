---
layout: page
title: "Terminal Tips"
group: projects
description: ""
---
{% include JB/setup %}

# Tmux

## Use terminal scrollbar with tmux

This is possible in both Screen and in tmux and the workaround is similar: to fool the multiplexers into thinking that the terminal has no "alternate screen" mode (such as that used by pico, mutt, etc). This is accomplished by setting termcap commands for the session. For GNU screen, put this in your .screenrc:

```
termcapinfo xterm*|xs|rxvt|terminal ti@:te@
```

and for tmux, add this to your .tmux.conf:

```
set -g terminal-overrides 'xterm*:smcup@:rmcup@'
```

The 'xterm*' part of the command should be set to whatever your terminal-emulator is declared as. Some form of xterm is a good guess, but you can check your on most sane *nix systems with:

```
termname
```

and this can usually be set in the preferences of your terminal program (ie: For Apple's Terminal.app, it's in Settings->Advanced->Emulation->"Declare terminal as"

The end result is that the overflow ends up in the terminal's scrollback buffer instead of disappearing. Of course, since this is one static buffer, things will get messy as you switch between screen or tmux windows, but this is handy for quickly flicking up to see the output of an ls command or the such.

from [ http://superuser.com/questions/310251/use-terminal-scrollbar-with-tmux ](http://superuser.com/questions/310251/use-terminal-scrollbar-with-tmux)

# Zsh

## oh-my-zsh

A community-driven framework for managing your zsh configuration. Includes 40+ optional plugins (rails, git, OSX, hub, capistrano, brew, ant, macports, etc), over 80 terminal themes to spice up your morning, and an auto-update tool so that makes it easy to keep up with the latest updates from the community. — Read more
http://twitter.com/ohmyzsh

### setup

oh-my-zsh should work with any recent release of zsh, the minimum recommended version is 4.3.9.

#### via `curl`

`curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh`

#### via `wget`

`wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh`

# Offlineimap & mutt

# Change Capslock to ctrl

# Awesome window manager
