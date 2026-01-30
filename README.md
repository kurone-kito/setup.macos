# 🍎 Auto setup for developing environment on macOS

![GitHub repo size](https://img.shields.io/github/repo-size/kurone-kito/setup.macos)

Desktop environment preference for macOS Sonoma
(Apple Silicon and Intel supported)  
macOS Sonoma (Apple Silicon / intel 両対応)
向けの作業環境セットアップスクリプト

## Overview

Fully automate the installation and settings of the app to make it easier
to create an environment when you buy a new Mac.  
新しい Mac を購入した際に、より手軽に環境構築するために、
アプリのインストールや設定を全自動化します。

## Usage

First, **give the terminal "full disk access" privileges** by seeing the
following URL.  
最初に、以下の URL を参考にして、
**ターミナルにフルディスクアクセス権限を与えてください。**

<https://discussions.apple.com/thread/251260652>

Then just run the following command! You can also start it by
double-clicking from the Finder app.  
次に以下のコマンドを実行するだけです！
Finder からダブルクリックで起動しても構いません。

```sh
./setup
```

The script used to use the Ansible, but now it didn't because it's a bit
too lengthy.  
かつては Ansible を使用していましたが、
少々冗長すぎるため今は使用していません。

## Details

### Apps install

When the interactive operation is required, implemented voice notifications
as much as possible.  
対話的な操作が必要になる場合、
できる限り音声での通知をするように実装しています。

Unless otherwise specified, as a general rule, install via Homebrew or Cask.  
特筆なき場合、原則として Homebrew または Cask 経由でインストールします。

<details><summary>CLI Apps</summary>

|  note   | description                                                                         |
| :-----: | :---------------------------------------------------------------------------------- |
| **`!`** | **DEPENDENCIES**: Removing this app may cause this setup to stop working correctly. |
|  `-A`   | without Apple Silicon Processor                                                     |

#### Benchmark

- [cloc](https://github.com/AlDanial/cloc)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)

#### Configuration tools

- [chezmoi](https://www.chezmoi.io/)

#### Convert tools for Media binary

- [AtomicParsley](http://atomicparsley.sourceforge.net/)
- [FFmpeg](https://www.ffmpeg.org/)
- [ImageMagick](https://imagemagick.org/index.php)
- [libvips](https://libvips.github.io/libvips/)

#### Convert tools for Texts

- [groff](https://www.gnu.org/software/groff/)
- [jq](https://stedolan.github.io/jq/)
- [nkf](https://osdn.net/projects/nkf/)

#### Database

- [MySQL](https://www.mysql.com/)
- [SQLite](https://www.sqlite.org/)

#### Development

- [ANTLR](https://www.antlr.org/)
- [asdf](http://asdf-vm.com/)
  - plugin: [asdf-dotnet](https://github.com/hensou/asdf-dotnet)
    - [.NET](https://dotnet.microsoft.com/) (via asdf-dotnet)
      - v8.0
      - v9.0
  - plugin: [asdf-nodejs](https://github.com/asdf-vm/asdf-nodejs) (via asdf)
    - [Node.js](https://nodejs.org/) (via asdf-nodejs)
      - v20 LTS Iron
      - v22 LTS Jod
      - v24
  - plugin: [asdf-python](https://github.com/danhper/asdf-python) (via asdf)
- [CMake](https://cmake.org)
- **`!`** Command Line Tools for Xcode (via xcode-select CLI)
- **`!`** [gawk: GNU awk utility](https://www.gnu.org/software/gawk/)
- **`!`** [GCC: the GNU Compiler Collection](https://gcc.gnu.org)
- [Microsoft .NET SDK](https://dotnet.microsoft.com/)
- [lv2: LADSPA v2](https://lv2plug.in/)
- `(-A)` [Mono](https://www.mono-project.com/)
- [Python](https://www.python.org)
  - v2
  - v3
- **`!`** [Rust](https://www.rust-lang.org/)
- [shellcheck](https://www.shellcheck.net)
- [vrc-get](https://vrc-get.anatawa12.com/)

#### Documentation

- [mdp](https://github.com/visit1985/mdp)
- [pandoc](https://pandoc.org/)
- [wkhtmltopdf](https://wkhtmltopdf.org/)

#### Files management

- [bat](https://github.com/sharkdp/bat)
- [broot](https://dystroy.org/broot/)
- [fzf](https://github.com/junegunn/fzf)
- [p7zip](https://sourceforge.net/projects/p7zip/)
- [rename](http://plasmasturm.org/code/rename/)
- [rsync](https://rsync.samba.org/)

#### Packages manager

- [Homebrew](https://brew.sh/) (directly install)
- **`!`** [mas-cli](https://github.com/mas-cli/mas)
- [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD)
- [Whalebrew](https://github.com/whalebrew/whalebrew)

#### Runtime

- [AdoptOpenJDK](https://adoptopenjdk.net/)
- [Apple Rosetta 2](https://support.apple.com/HT211861)
  via Apple Software Update

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
  - [git-vrc](https://github.com/anatawa12/git-vrc) (via cargo)
- [GitHub CLI](https://cli.github.com/)

#### Remote

- [awscli](https://aws.amazon.com/cli/)
- [aws-nuke](https://github.com/rebuy-de/aws-nuke)
- [AWS SAM CLI](https://aws.amazon.com/serverless/sam/)
- **`!`** [curl](https://curl.se)
- **`!`** [GNU wget](https://www.gnu.org/software/wget/)
- [minicom](https://salsa.debian.org/minicom-team/minicom)
- [Mosh](https://mosh.org)
- [nmap](https://nmap.org/)
- [OpenVPN](https://openvpn.net/)
- [inetutils: GNU network utilities](https://www.gnu.org/software/inetutils/)
- [Tor](https://www.torproject.org/)

#### Shell

- [bats-core](https://bats-core.readthedocs.io/)
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

#### Text editors

- [GNU Nano](https://www.nano-editor.org)
- [Neovim](https://neovim.io/)
- [Vim](https://www.vim.org/)

#### Virtualizations

- [act](https://github.com/nektos/act)
- [Parallels Virtualization SDK](https://www.parallels.com/products/desktop/download/)
- [Vagrant](https://www.vagrantup.com/)
  - plugins (via Vagrant)
    - `(-A)` [vagrant-disksize](https://github.com/sprotheroe/vagrant-disksize)
    - [Vagrant Parallels Provider](https://parallels.github.io/vagrant-parallels/)
    - [Vagrant Reload Provisioner](https://github.com/aidanns/vagrant-reload)
    - `(-A)` [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest)

#### Others

- [gti](https://r-wos.org/hacks/gti)
- [Nyancat CLI](http://nyancat.dakko.us/)
- [sl](https://github.com/mtoyoda/sl)

</details>

<details><summary>Desktop Apps</summary>

Apps that exist in the Mac App Store are temporarily not installed by this
script. It's because the installation is unstable and very slow.  
Mac App Store からインストール可能なアプリは、
このスクリプトでは暫定的にインストールしないようにしています。
インストールが不安定かつ非常に低速となるためです。

|  note   | description                                                                         |
| :-----: | :---------------------------------------------------------------------------------- |
| **`!`** | **DEPENDENCIES**: Removing this app may cause this setup to stop working correctly. |
|  `-A`   | without Apple Silicon Processor                                                     |

#### 3D Modeling

- [Blender](https://www.blender.org/)
- [FreeCAD](https://www.freecadweb.org/)
- [UltiMaker Cura](https://ultimaker.com/software/ultimaker-cura)

#### Audios, Videos, and Broadcasting

- [Aegisub](https://aegisub.org/)
- [Amazon Prime Video](https://www.primevideo.com/) (via Mac App Store)
- [Apple GarageBand](https://www.apple.com/mac/garageband/)
  (via Mac App Store)
- [Apple iMovie](https://www.apple.com/imovie/) (via Mac App Store)
- [Apple Logic Pro](https://www.apple.com/logic-pro/)
  (via Mac App Store)
- [iZotope Product Portal](https://www.izotope.com/)
- [OBS Studio](https://obsproject.com/)
- [Restream Chat](https://restream.io/chat/)
- [Rogue Amoeba Audio Hijack](https://rogueamoeba.com/audiohijack/)
- [Rogue Amoeba Loopback](https://rogueamoeba.com/loopback/)
- [Voicepeak](https://www.ah-soft.com/voice/)

#### Authentication

- `(-A)` [Keybase](https://keybase.io/)

#### Benchmark

- [Blackmagic Disk Speed Test](https://apps.apple.com/app/blackmagic-disk-speed-test/id425264550)
  (via Mac App Store)
- [Sensei](https://cindori.com/sensei)
- [MAXON Cinebench](https://www.maxon.net/ja/cinebench) (via Mac App Store)

#### Cloud storages

- [Adobe Creative Cloud](https://www.adobe.com/creativecloud.html)
- [Microsoft OneDrive](https://www.microsoft.com/microsoft-365/onedrive)
- [OmniPresence](https://www.omnigroup.com/more)

#### Development

- [ALCOM](https://vrc-get.anatawa12.com/alcom/)
- [Android Studio](https://developer.android.com/studio)
- [Apple Developer](https://apps.apple.com/us/app/apple-developer/id640199958)
  (via Mac App Store)
- **`!`** [Apple Xcode](https://developer.apple.com/xcode/) (via Mac App Store)
- [Apple TestFlight](https://testflight.apple.com/) (via Mac App Store)
- [Figma](https://www.figma.com/downloads/)
- [React Native Debugger](https://github.com/jhen0409/react-native-debugger)
- [Unity Hub](https://unity3d.com/)
  - Unity version 2019.4.31f1 (via Unity Hub)
  - Unity version 2022.3.6f1 (via Unity Hub)
  - with the common modules
    - Module: Android Build Support
    - Module: Windows Build Support (Mono)
    - Module: Documentation
    - Module: Language Pack (Japanese)

#### Devices

- [scrcpy](https://github.com/Genymobile/scrcpy)
- [Canon Satera MF Printer driver](https://cweb.canon.jp/satera/mfp/)
- `(-A)` [Haptic Touch Bar](https://www.haptictouchbar.com)
  (Troublesome to determine whether or not the TouchBar is present)
- [Karabiner-Elements](https://karabiner-elements.pqrs.org)
- [logicool G Hub](https://gaming.logicool.co.jp/innovation/g-hub.html)
- [X-Mirage](https://www.x-mirage.jp/)

#### Documents and Office apps

- [Amazon Kindle](https://www.amazon.com/kindle) (via Mac App Store)
- [ChatGPT](https://chatgpt.com/)
- [Claude Desktop](https://claude.ai/)
- [Manta](https://getmanta.app/) (via Mac App Store)
- [Apple Keynote](https://www.apple.com/keynote/) (via Mac App Store)
- [Apple Numbers](https://www.apple.com/numbers/) (via Mac App Store)
- [Apple Pages](https://www.apple.com/pages/) (via Mac App Store)
- [Microsoft Excel](https://www.microsoft.com/microsoft-365/excel)
  (via Mac App Store)
- [Microsoft OneNote](https://www.microsoft.com/microsoft-365/onenote)
  (via Mac App Store)
- [Microsoft PowerPoint](https://www.microsoft.com/microsoft-365/powerpoint)
  (via Mac App Store)
- [Microsoft Word](https://www.microsoft.com/microsoft-365/word)
  (via Mac App Store)

#### Games

- [Human Resource Machine](http://tomorrowcorporation.com/humanresourcemachine)
  (via Mac App Store)
- [Minecraft Java Edition](https://www.minecraft.net/)
- [Steam](https://store.steampowered.com/)

#### Memos and Tasks

- [Grammarly](https://www.grammarly.com/) (via Mac App Store)
- [Microsoft To Do](https://todo.microsoft.com/) (via Mac App Store)
- [Notion](https://www.notion.so/)
- [OmniFocus](https://www.omnigroup.com/omnifocus/) (via Mac App Store)

#### Messaging and Socials

- [Discord](https://discord.com/)
- [Facebook Messenger](https://www.messenger.com/) (via Mac App Store)
- [LINE](https://line.me/) (via Mac App Store)
- [Microsoft Teams](https://www.microsoft.com/ja-jp/microsoft-teams/group-chat-software)
- [Slack](https://slack.com/) (via Mac App Store)
- [Zoom](https://zoom.us/)

#### Remote

- [Amazon Workspaces](https://clients.amazonworkspaces.com/)
- [Apple Remote Desktop](http://www.apple.com/remotedesktop/) (via Mac App Store)
- [Microsoft Remote Desktop](https://apps.apple.com/app/microsoft-remote-desktop/id1295203466)
  (via Mac App Store)
- [OpenVPN Connect](https://openvpn.net/client-connect-vpn-for-mac-os/)
- [Real VNC Viewer](https://www.realvnc.com/connect/download/viewer/)
- [SwitchHosts](https://switchhosts.vercel.app)
- [TeamViewer](https://www.teamviewer.com/)
- [Wireshark](https://www.wireshark.org/)

#### Terminal

- [term](https://github.com/liyanage/macosx-shell-scripts/blob/master/term)
- [terminal-notifier](https://github.com/julienXX/terminal-notifier)

#### Text editors

- [Cursor](https://www.cursor.so/)
- [Sublime Text](https://www.sublimetext.com/)
- [Visual Studio Code](https://code.visualstudio.com/)

#### Virtualizations

- [DOSBox-X](https://dosbox-x.com)
- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- [Parallels Desktop](https://www.parallels.com/) (via Mac App Store)
- `(-A)` [Oracle VM Virtualbox + Extension Pack](https://www.virtualbox.org/)

#### Web browsers

- [Google Chrome](https://www.google.com/chrome/)
- `(-A)` [Chromium](https://www.chromium.org/Home)
- [Insomnia](https://insomnia.rest/)
- [Mozilla Firefox](https://www.mozilla.org/firefox/)
- [Tor Browser](https://www.torproject.org/projects/torbrowser.html)
- Some extensions for Apple Safari (via Mac App Store)
  - [Grammarly for Safari](https://apps.apple.com/app/grammarly-for-safari/id1462114288)

</details>

<details><summary>Fonts</summary>

|  note   | description                                                                         |
| :-----: | :---------------------------------------------------------------------------------- |
| **`!`** | **DEPENDENCIES**: Removing this app may cause this setup to stop working correctly. |

- [Dosis](https://fonts.google.com/specimen/Dosis)
- [Exo 2](https://fonts.google.com/specimen/Exo+2)
- **`!`** [白源: HackGen Nerd](https://github.com/yuru7/HackGen)
- [Lato](https://fonts.google.com/specimen/Lato)
- **`!`** [Meslo LG](https://github.com/andreberg/Meslo-Font)

</details>

### Install the upgrade script

Install a script to upgrade the installed app with just one command.  
ひとつのコマンドだけで、
インストールしたアプリをアップグレードするスクリプトをインストールします。

<details><summary>Usage & Details</summary>

```sh
~/bin/update
```

- Upgrade the apps installed via the Homebrew
- Upgrade the plugins of Vagrant
- Upgrade the Docker images
- Upgrade the Prezto
- Upgrade the asdf (.NET, Node.js, and Python)

</details>

### Pulls some docker images

<details><summary>list</summary>

| Image                         | Tag                                                                                      |
| :---------------------------- | :--------------------------------------------------------------------------------------- |
| `hello-world`                 | _`latest`_                                                                               |
| `alpine`                      | _`latest`_                                                                               |
| `busybox`                     | _`latest`_                                                                               |
| `debian`                      | _`latest`_                                                                               |
| `ubuntu`                      | _`latest`_                                                                               |
| `docker`                      | `dind`, `git`, _`latest`_                                                                |
| `node`                        | `20`, `20-alpine`, `20-slim`, `22`, `22-alpine`, `22-slim`, `24`, `24-alpine`, `24-slim` |
| `ghcr.io/catthehacker/ubuntu` | `act-22.04`, `act-latest`, ~~`ubuntu:full-20.04`~~, ~~`ubuntu:full-latest`~~             |

</details>

### Initialize for Zsh / Prezto / Powerlevel10k

The script creates a symbolic link to the Prezto default profile.
Also, add a definition so that you can scan under the `~/.zsh.d` folder
when starting the interactive shell.  
セットアップ スクリプトは Prezto 既定のプロファイルへ、
シンボリックリンクを作成します。同時に、対話シェル開始時に `~/.zsh.d`
フォルダ配下をスキャンできるよう定義を追加しています。

### Initialize for web-frontend development environment

The script creates and installs a local CA in the system root store,
and generates locally-trusted certificates using the mkcert.  
セットアップ スクリプトは mkcert を使用して、システムルートストアにローカル
CA を作成してインストールし、ローカルで信頼できる証明書を生成します。

Also, by starting Firefox in this process, if the root store does not exist,
it will be initialized.  
また、この工程で Firefox を起動することにより、
ルートストアが存在しない場合、初期化します。

### Customization of macOS desktop

See: [https://macos-defaults.com/](https://macos-defaults.com/)

## See also

- Depended repository: [kurone-kito/dotfiles](https://github.com/kurone-kito/dotfiles)

## Playground

Using Vagrant and Virtualbox, you can try out the script in a virtual
environment.  
Vagrant と Virtualbox を使用して、仮想環境でスクリプトを試すことができます。

```sh
vagrant up
```

The script can also be attempted via the `test` script, but
**this script is deprecated**. Please use the Vagrant-based approach.
not maintained and is deprecated.  
このスクリプトを `test` スクリプト経由でも試行可能ですが、
**このスクリプトは非推奨**です。代わりに Vagrant をご利用ください。

## Contributing

Welcome to contribute to this repository! For more details,
please refer to [CONTRIBUTING.md](.github/CONTRIBUTING.md).

## License

[MIT](./LICENSE)
