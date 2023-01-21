# macOS auto setup for develop environment

Desktop environment preference for macOS Ventura (Apple Sillicon and intel supported)  
macOS Ventura (Apple Sillicon / intel 両対応) 向けの作業環境セットアップスクリプト

## Overview

Fully automate the installation and settings of the app to make it easier to create an environment when you buy a new Mac.  
新しい Mac を購入した際に、より手軽に環境構築するために、アプリのインストールや設定を全自動化します。

## Usage

First, **give the terminal "full disk access" privileges** by seeing to the following URL.  
最初に、以下の URL を参考にして、**ターミナルにフルディスクアクセス権限を与えてください。**

<https://discussions.apple.com/thread/251260652>

Then just run the following command! You can also start it by double-clicking from the Finder app.  
次に以下のコマンドを実行するだけです！ファインダーからダブルクリックで起動しても構いません。

```sh
./setup
```

The script used to use the Ansible, but now it didn't because it's a bit too lengthy.  
かつては Ansible を使用していましたが、少々冗長すぎるため今は使用していません。

## Details

### Apps install

When the interactive operation is required, implemented voice notifications as much as possible.  
対話的な操作が必要になる場合、できる限り音声での通知をするように実装しています。

Unless otherwise specified, as a general rule, install via Homebrew or Cask.  
特筆なき場合、原則として Homebrew または Cask 経由でインストールします。

<!-- markdownlint-disable MD024 -->
<!-- markdownlint-disable MD033 -->
<details><summary>CLI Apps</summary>

|  note   | description                                                                         |
| :-----: | :---------------------------------------------------------------------------------- |
| **`!`** | **DEPENDENCIES**: Removing this app may cause this setup to stop working correctly. |
|  `-A`   | without Apple Sillicon Processor                                                    |

#### Benchmark

- [cloc](https://github.com/AlDanial/cloc)
- [neofetch](https://github.com/dylanaraps/neofetch)

#### Configuration tools

- [chezmoi](https://www.chezmoi.io/)

#### Convert tools for Media binary

- [FFmpeg](https://www.ffmpeg.org/)
- [ImageMagick](https://imagemagick.org/index.php)
- [libvips](https://libvips.github.io/libvips/)

#### Convert tools for Texts

- [groff](https://www.gnu.org/software/groff/)
- [jq](https://stedolan.github.io/jq/)
- [nkf](https://osdn.net/projects/nkf/)
- [TextQL](https://github.com/dinedal/textql)

#### Database

- [SQLite](https://www.sqlite.org/)

#### Development

- [ANTLR](https://www.antlr.org/)
- [asdf](http://asdf-vm.com/)
  - plugin: [asdf-nodejs](https://github.com/asdf-vm/asdf-nodejs) (via asdf)
    - [Node.js](https://nodejs.org/) (via asdf-nodejs)
      - v14 LTS Fermium
      - v16 LTS Gallium
      - v18 LTS Hydrogen
      - v19
  - plugin: [asdf-python](https://github.com/danhper/asdf-python) (via asdf)
    - [Python](https://www.python.org) (via asdf-python)
      - v2
      - v3 (via deep dependencies of the Homebrew packages: e.g., awscli, graphviz, and others)
- [CMake](https://cmake.org)
- **`!`** Command Line Tools for Xcode (via xcode-select CLI)
- **`!`** [gawk: GNU awk utility](https://www.gnu.org/software/gawk/)
- **`!`** [GCC: the GNU Compiler Collection](https://gcc.gnu.org)
- [Microsoft .NET SDK](https://dotnet.microsoft.com/)
- [lv2: LADSPA v2](https://lv2plug.in/)
- `(-A)` [Mono](https://www.mono-project.com/)
- [shellcheck](https://www.shellcheck.net)

#### Documentation

- [Graphviz](https://graphviz.org/)
- [mdp](https://github.com/visit1985/mdp)
- [pandoc](https://pandoc.org/)
- [PlantUML](https://plantuml.com/)
- [wkhtmltopdf](https://wkhtmltopdf.org/)

#### Files management

- [bat](https://github.com/sharkdp/bat)
- [broot](https://dystroy.org/broot/)
- [exa](https://the.exa.websitef)
- [fzf](https://github.com/junegunn/fzf)
- [myside](https://github.com/mosen/mysides)
- [p7zip](https://sourceforge.net/projects/p7zip/)
- [rename](http://plasmasturm.org/code/rename/)
- [rsync](https://rsync.samba.org/)

#### Packages manager

- [Homebrew](https://brew.sh/) (directly install)
- [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD)

#### Runtime

- [AdoptOpenJDK](https://adoptopenjdk.net/)
- [Apple Rosetta 2](https://support.apple.com/HT211861) via Apple Software Update

#### Testing

- [Microsoft PICT](https://jaccz.github.io/pairwise/)
- [mkcert](https://mkcert.dev/)
- [Mozilla Network Security Services](https://developer.mozilla.org/en/docs/Mozilla/Projects/NSS)
- [ngrok](https://ngrok.com/)

#### Version control system

- [Apache Subversion](https://subversion.apache.org/)
- [Gist](http://defunkt.io/gist/)
- **`!`** [Git](https://git-scm.com/)
  - **`!`** [Git Large File Storage](https://git-lfs.github.com/)
  - [git-delta: A viewer for git and diff output](https://github.com/dandavison/delta)
- [GitHub CLI](https://cli.github.com/)
- [GLab: GitLab CLI tool](https://glab.readthedocs.io/)

#### Remote

- [awscli](https://aws.amazon.com/cli/)
- [aws-nuke](https://github.com/rebuy-de/aws-nuke)
- [AWS SAM CLI](https://aws.amazon.com/serverless/sam/)
- **`!`** [curl](https://curl.se)
- **`!`** [GNU wget](https://www.gnu.org/software/wget/)
- [Mosh](https://mosh.org)
- [nmap](https://nmap.org/)
- [OpenVPN](https://openvpn.net/)
- [inetutils: GNU network utilities](https://www.gnu.org/software/inetutils/)
- [Tor](https://www.torproject.org/)

#### Shell

- [lporg](https://github.com/blacktop/lporg)
- [Microsoft PowerShell](https://microsoft.com/PowerShell)
- [Prezto](https://github.com/sorin-ionescu/prezto) (via Git)
  - [Powerlevel10k](https://github.com/romkatv/powerlevel10k) (via Prezto)
- [The Fuck](https://github.com/nvbn/thefuck)
- [tmux](https://github.com/tmux/tmux)
- **`!`** [zsh-completions](https://github.com/zsh-users/zsh-completions)

#### Signature

- **`!`** [GnuPG: The GNU Privacy Guard](https://gnupg.org/)
- **`!`** [PINEntry for Mac](https://github.com/GPGTools/pinentry)
- **`!`** [Unbound](https://www.nlnetlabs.nl/projects/unbound/)

#### System

- **`!`** [Coreutils: GNU Core Utilities](https://www.gnu.org/software/coreutils/coreutils.html)
- [gotop](https://github.com/xxxserxxx/gotop)
- [htop](https://htop.dev)
- [Mackup](https://github.com/lra/mackup)
- **`!`** [Proctools: pgrep, pkill and pfind for Darwin](http://proctools.sourceforge.net/)

#### Text Browsing

- [cheat](https://github.com/cheat/cheat)
- [links](http://links.twibright.com/)
- [tldr pages](https://tldr.sh)

#### Text editors

- [GNU Nano](https://www.nano-editor.org)
- [Vim](https://www.vim.org/)

#### Virtualizations

- [act](https://github.com/nektos/act)
- [GitLab Runner](https://gitlab.com/gitlab-org/gitlab-runner)
- [Parallels Virtualization SDK](https://www.parallels.com/products/desktop/download/)
- [Vagrant](https://www.vagrantup.com/)
  - plugins (via Vagrant)
    - [vagrant-disksize](https://github.com/sprotheroe/vagrant-disksize)
    - [Vagrant Parallels Provider](https://parallels.github.io/vagrant-parallels/)
    - [Vagrant Reload Provisioner](https://github.com/aidanns/vagrant-reload)
    - [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest)

#### Others

- **`!`** [mas-cli](https://github.com/mas-cli/mas)
- [Nyancat CLI](http://nyancat.dakko.us/)

</details>
<!-- markdownlint-enable MD033 -->

<!-- markdownlint-disable MD033 -->
<details><summary>Desktop Apps</summary>

Apps that exist in the Mac App Store are temporarily not installed by this script. It's because the installation is unstable and very slow.  
Mac App Store からインストール可能なアプリは、このスクリプトでは暫定的にインストールしないようにしています。インストールが不安定かつ非常に低速となるためです。

|  note   | description                                                                         |
| :-----: | :---------------------------------------------------------------------------------- |
| **`!`** | **DEPENDENCIES**: Removing this app may cause this setup to stop working correctly. |
|  `-A`   | without Apple Sillicon Processor                                                    |

#### 3D Modeling

- [Blender](https://www.blender.org/)
- [FreeCAD](https://www.freecadweb.org/)

#### Audios, Videos, and Broadcasting

- [Apple GarageBand](https://www.apple.com/mac/garageband/) (via Mac App Store)
- [Apple iMovie](https://www.apple.com/imovie/) (via Mac App Store)
- [iZotope Product Portal](https://www.izotope.com/)
- [OBS Studio](https://obsproject.com/)
- [Restream Chat](https://restream.io/chat/)
- [Rogue Amoeba Audio Hijack](https://rogueamoeba.com/audiohijack/)
- [Rogue Amoeba Loopback](https://rogueamoeba.com/loopback/)
- [Schism Tracker](https://schismtracker.org/)
- [Sonic Visualiser](https://sonicvisualiser.org/)

#### Authentication

- `(-A)` [Authy Desktop](https://authy.com/download/)
- `(-A)` [Keybase](https://keybase.io/)
  - Keybase app is distributed only Apple Sillicon Mac in the Mac App Store.

#### Benchmark

- [Blackmagic Disk Speed Test](https://apps.apple.com/app/blackmagic-disk-speed-test/id425264550) (via Mac App Store)
- [GFXBench Metal](https://gfxbench.com/) (via Mac App Store)
- [MAXON Cinebench](https://www.maxon.net/ja/cinebench) (via Mac App Store)

#### Cloud storages

- [Adobe Creative Cloud](https://www.adobe.com/creativecloud.html)
- [Dropbox](https://www.dropbox.com/)
- [Microsoft OneDrive](https://www.microsoft.com/microsoft-365/onedrive)
- [OmniPresence](https://www.omnigroup.com/more)

#### Desktop

- [RDM](https://github.com/avibrazil/RDM)

#### Development

- [Android Studio](https://developer.android.com/studio)
- [Apple Developer](https://apps.apple.com/us/app/apple-developer/id640199958) (via Mac App Store)
- **`!`** [Apple Xcode](https://developer.apple.com/xcode/) (via Mac App Store)
- [Apple TestFlight](https://testflight.apple.com/) (via Mac App Store)
- [React Native Debugger](https://github.com/jhen0409/react-native-debugger)
- [Unity Hub](https://unity3d.com/)
  - Unity version 2019.3.13f1 (via Unity Hub)
  - Unity version 2019.4.31f1 (via Unity Hub)
  - with the common modules
    - Module: Android Build Support
    - Module: Windows Build Support (Mono)
    - Module: Documentation
    - Module: Language Pack (Japanese)
- [VRChat Creator Companion](https://github.com/AranoYuki1/VCC-for-mac)

#### Devices

- [scrcpy](https://github.com/Genymobile/scrcpy)
- [Canon Satera MF Printer driver](https://cweb.canon.jp/satera/mfp/)
- `(-A)` [Haptic Touch Bar](https://www.haptictouchbar.com) (Troublesome to determine whether or not the TouchBar is present)
- [Karabiner-Elements](https://karabiner-elements.pqrs.org)
- [logicool G Hub](https://gaming.logicool.co.jp/innovation/g-hub.html)
- [Raspberry Pi Imager](https://www.raspberrypi.org/software/)

#### Documents and Office apps

- [Amazon Kindle](https://www.amazon.com/kindle) (via Mac App Store)
- [Manta](https://getmanta.app/) (via Mac App Store)
- [Apple Keynote](https://www.apple.com/keynote/) (via Mac App Store)
- [Apple Numbers](https://www.apple.com/numbers/) (via Mac App Store)
- [Apple Pages](https://www.apple.com/pages/) (via Mac App Store)
- [Microsoft Excel](https://www.microsoft.com/microsoft-365/excel) (via Mac App Store)
- [Microsoft OneNote](https://www.microsoft.com/microsoft-365/onenote) (via Mac App Store)
- [Microsoft PowerPoint](https://www.microsoft.com/microsoft-365/powerpoint) (via Mac App Store)
- [Microsoft Word](https://www.microsoft.com/microsoft-365/word) (via Mac App Store)

#### Games

- [Human Resource Machine](http://tomorrowcorporation.com/humanresourcemachine) (via Mac App Store)
- [Minecraft Java Edition](https://www.minecraft.net/)
- [Steam](https://store.steampowered.com/)

#### Memos and Tasks

- `(-A)` [Boost Note](https://boostnote.io/)
- [Grammarly](https://www.grammarly.com/)
- [Microsoft To Do](https://todo.microsoft.com/) (via Mac App Store)
- [Notion](https://www.notion.so/)
- [OmniFocus](https://www.omnigroup.com/omnifocus/) (via Mac App Store)

#### Messaging and Socials

- [Discord](https://discord.com/)
- [Facebook Messenger](https://www.messenger.com/) (via Mac App Store)
- `(-A)` [Gitter](https://gitter.im/)
- [Google Chat](https://workspace.google.co.jp/products/chat/)
- [LINE](https://line.me/) (via Mac App Store)
- [Microsoft Skype](https://www.skype.com/)
- [Microsoft Teams](https://www.microsoft.com/ja-jp/microsoft-teams/group-chat-software)
- [Slack](https://slack.com/) (via Mac App Store)
- [Twitter](https://twitter.com/) (via Mac App Store)
- [Zoom](https://zoom.us/)

#### Remote

- [Amazon Workspaces](https://clients.amazonworkspaces.com/)
- [Apple Remote Desktop](http://www.apple.com/remotedesktop/) (via Mac App Store)
- [Microsoft Remote Desktop](https://apps.apple.com/app/microsoft-remote-desktop/id1295203466) (via Mac App Store)
- [Real VNC Viewer](https://www.realvnc.com/connect/download/viewer/)
- [TeamViewer](https://www.teamviewer.com/)

#### Terminal

- [term](https://github.com/liyanage/macosx-shell-scripts/blob/master/term)
- [terminal-notifier](https://github.com/julienXX/terminal-notifier)

#### Text editors

- [Sublime Text](https://www.sublimetext.com/)
- [Visual Studio Code](https://code.visualstudio.com/)

#### Virtualizations

- [DOSBox-X](https://dosbox-x.com)
- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- [Parallels Desktop](https://www.parallels.com/)
- `(-A)` [Oracle VM Virtualbox + Extension Pack](https://www.virtualbox.org/)

#### Web browsers

- [Google Chrome](https://www.google.com/chrome/)
- [Chromium](https://www.chromium.org/Home)
- [Insomnia](https://insomnia.rest/)
- [Mozilla Firefox ESR](https://www.mozilla.org/firefox/)
- [Tor Browser](https://www.torproject.org/projects/torbrowser.html)
- Some extensions for Apple Safari (via Mac App Store)
  - [Grammarly for Safari](https://apps.apple.com/app/grammarly-for-safari/id1462114288)

</details>
<!-- markdownlint-enable MD033 -->

<!-- markdownlint-disable MD033 -->
<details><summary>Fonts</summary>

|  note   | description                                                                         |
| :-----: | :---------------------------------------------------------------------------------- |
| **`!`** | **DEPENDENCIES**: Removing this app may cause this setup to stop working correctly. |

- **`!`** [白源: HackGen Nerd](https://github.com/yuru7/HackGen)
- [IBM Plex](https://www.ibm.com/plex/)
- [Lato](https://fonts.google.com/specimen/Lato)
- **`!`** [Meslo LG](https://github.com/andreberg/Meslo-Font)

</details>
<!-- markdownlint-enable MD033 -->
<!-- markdownlint-enable MD024 -->

### Install the upgrade script

Install a script to upgrade the installed app with just one command.  
ひとつのコマンドだけで、インストールしたアプリをアップグレードするスクリプトをインストールします。

<!-- markdownlint-disable MD024 -->
<!-- markdownlint-disable MD033 -->
<details><summary>Usage & Details</summary>

```sh
~/bin/update
```

- Upgrade the apps installed via the Homebrew
- Upgrade the plugins of Vagrant
- Upgrade the Docker images
- Upgrade the Prezto
- Upgrade the asdf (Node.js and Python)

</details>
<!-- markdownlint-enable MD033 -->
<!-- markdownlint-enable MD024 -->

### Pulls some docker images

<!-- markdownlint-disable MD033 -->
<details><summary>list</summary>

| Image                         | Tag                                                                                                       |
| :---------------------------- | :-------------------------------------------------------------------------------------------------------- |
| `hello-world`                 | _`latest`_                                                                                                |
| `alpine`                      | _`latest`_                                                                                                |
| `busybox`                     | _`latest`_                                                                                                |
| `debian`                      | _`latest`_                                                                                                |
| `ubuntu`                      | _`latest`_                                                                                                |
| `docker`                      | `dind`, `git`, _`latest`_                                                                                 |
| `node`                        | `14`, `14-alpine`, `14-bullseye-slim`, `16`, `16-alpine` `16-bullseye-slim`, `18`, `18-alpine`, `18-slim` |
| `gitlab/gitlab-runner`        | _`latest`_                                                                                                |
| `ghcr.io/catthehacker/ubuntu` | `act-22.04`, `act-latest`, ~~`ubuntu:full-20.04`~~, ~~`ubuntu:full-latest`~~                              |

</details>
<!-- markdownlint-enable MD033 -->

### Initialize for Zsh / Prezto / Powerlevel10k

The script creates a symbolic link to the Prezto default profile.
Also, add a definition so that you can scan under the `~/.zsh.d` folder when starting the interactive shell.  
セットアップ スクリプトは Prezto 既定のプロファイルへシンボリックリンクを作成します。
同時に、対話シェル開始時に `~/.zsh.d` フォルダ配下をスキャンできるよう定義を追加しています。

### Initialize for web-frontend development environment

The script creates and installs a local CA in the system root store, and generates locally-trusted certificates using the mkcert.  
セットアップ スクリプトは mkcert を使用して、システムルートストアにローカル CA を作成してインストールし、ローカルで信頼できる証明書を生成します。

Also, by starting Firefox in this process, if the root store does not exist, it will be initialized.  
また、この工程で Firefox を起動することにより、ルートストアが存在しない場合、初期化します。

### Customization of macOS desktop

See: [https://macos-defaults.com/](https://macos-defaults.com/)

## See also

- Depended repository: [kurone-kito/dotfiles](https://github.com/kurone-kito/dotfiles)

## Playground

Using Vagrant and Virtualbox, you can try out the script in a virtual environment.  
Vagrant と Virtualbox を使用して、仮想環境でスクリプトを試すことができます。

```sh
vagrant up
```

The script can also attempt via the `test` script, but this script is not maintained and is deprecated.  
このスクリプトを `test` スクリプト経由でも試行可能ですが、このスクリプトはメンテナンスしていないので非推奨です。

## License

MIT
