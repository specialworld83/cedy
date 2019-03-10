### Introduction
Cedy it's a fork of Fedy software for Fedora. We have forged the software, corrected and now supports sa pacman that AUR. Some packages are installed by aur, others are located directly in the repository.

Cedy lets you install multimedia codecs and additional software that Condres OS, like mp3 support, Adobe Flash, Oracle Java etc., and much more with just a few clicks.


### Usage

After installation, search for `Cedy` in the menu/overview or type `cedy` in the terminal.

### Plugin structure

Plugins can be placed under `~/.local/share/cedy/plugins/`, or the system plugins directory.

Each plugin is a directory with the suffix `.plugin`, which consist of a JSON formatted metadata file. The metadata file contains information about the plugin and describes how `Fedy` should run the tasks.

The plugins can run any command or scripts (`bash`, `python` etc.). In addtion to the system commands, `Cedy` provides an additional command, `run-as-root` to allow running commands (e.g.- `run-as-root touch /some/file/somewhere`) or scripts (e.g.- `run-as-root -s do-stuff.sh`) as root.

Have a look at the existing plugins to know more about how to write plugins for `Cedy`.

### Source code

Source code is publicly available on GitHub, and automatically cloned to GitLab:


```sh

$ git clone https://github.com/specialworld83/cedy.git
```


### License

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program.  If not, see [gnu.org/licenses](http://www.gnu.org/licenses/).

Fedy © 2014-2018 Folks 

Cedy © 2019 Condres OS
