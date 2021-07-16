# macOS auto setup for develop environment

Desktop environment preference for macOS Big Sur (intel and M1)  
macOS Big Sur (intel / M1 両対応) 向けの作業環境セットアップスクリプト

## Overview

Fully automate the installation and settings of the app to make it easier to create an environment when you buy a new Mac.  
新しい Mac を購入した際に、より手軽に環境構築するために、アプリのインストールや設定を全自動化します。

## Usage

```sh
./setup
```

The script used to use the Ansible, but now it didn't because it's a bit too lengthy.  
かつては Ansible を使用していましたが、少々冗長すぎるため今は使用していません。

## Details

### Apps install

Unless otherwise specified, as a general rule, install via Homebrew or Cask.  
特筆なき場合、原則として Homebrew または Cask 経由でインストールします。

<!-- markdownlint-disable MD024 -->
<!-- markdownlint-disable MD033 -->
<details><summary>CLI Apps</summary>

#### Audio &amp; Images

- [FFmpeg](https://www.ffmpeg.org/)
- [ImageMagick](https://imagemagick.org/index.php)
- [libvips](https://libvips.github.io/libvips/)
- [lv2: LADSPA v2](https://lv2plug.in/)

#### Development

- [AnyEnv](https://anyenv.github.io/) (via GitHub)
  - [nodenv](https://github.com/nodenv/nodenv) (via AnyEnv)
    - [Node.js](https://nodejs.org/) (via Nodenv)
      - v12 LTS Erbium
      - v14 LTS Fermium
      - v16
  - plugin: [anyenv-update](https://github.com/znz/anyenv-update) (via GitHub)
- [asdf](http://asdf-vm.com/)
- Command Line Tools for Xcode (via xcode-select CLI)
- [gawk: GNU awk utility](https://www.gnu.org/software/gawk/)
- [GCC: the GNU Compiler Collection](https://gcc.gnu.org)
- [jq](https://stedolan.github.io/jq/)
- [shellcheck](https://www.shellcheck.net)
- [TextQL](https://github.com/dinedal/textql)

#### Documentation

- [Graphviz](https://graphviz.org/)
- [mdp](https://github.com/visit1985/mdp)
- [pandoc](https://pandoc.org/)
- [PlantUML](https://plantuml.com/)
- [wkhtmltopdf](https://wkhtmltopdf.org/)

#### Games

- [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD)

#### Files management

- [bat](https://github.com/sharkdp/bat)
- [broot](https://dystroy.org/broot/)
- [exa](https://the.exa.websitef)
- [fzf](https://github.com/junegunn/fzf)
- [p7zip](https://sourceforge.net/projects/p7zip/)
- [rename](http://plasmasturm.org/code/rename/)
- [rsync](https://rsync.samba.org/)

#### Runtime

- [AdoptOpenJDK](https://adoptopenjdk.net/)
- [Microsoft .NET Core Runtime](https://dotnet.microsoft.com/download#macos)

#### Testing

- [Microsoft PICT](https://jaccz.github.io/pairwise/)
- [mkcert](https://mkcert.dev/)
- [Mozilla Network Security Services](https://developer.mozilla.org/en/docs/Mozilla/Projects/NSS)
- [ngrok](https://ngrok.com/)

#### Version control system

- [Apache Subversion](https://subversion.apache.org/)
- [Gist](http://defunkt.io/gist/)
- [Git](https://git-scm.com/)
  - [Git Large File Storage](https://git-lfs.github.com/)
  - [git-delta: A viewer for git and diff output](https://github.com/dandavison/delta)
- [GitHub Hub](https://hub.github.com/)

#### Remote

- [awscli](https://aws.amazon.com/cli/)
- [curl](https://curl.se)
- [GNU wget](https://www.gnu.org/software/wget/)
- [Mosh](https://mosh.org)
- [inetutils: GNU network utilities](https://www.gnu.org/software/inetutils/)

#### Shell

- [Microsoft PowerShell](https://microsoft.com/PowerShell)
- [Prezto](https://github.com/sorin-ionescu/prezto) (via GitHub)
- [The Fuck](https://github.com/nvbn/thefuck)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)

#### Signature

- [GnuPG: The GNU Privacy Guard](https://gnupg.org/)
- [PINEntry for Mac](https://github.com/GPGTools/pinentry)
- [Unbound](https://www.nlnetlabs.nl/projects/unbound/)

#### System

- [Coreutils: GNU Core Utilities](https://www.gnu.org/software/coreutils/coreutils.html)
- [gotop](https://github.com/xxxserxxx/gotop)
- [htop](https://htop.dev)
- [Mackup](https://github.com/lra/mackup)
- [Proctools: pgrep, pkill and pfind for Darwin](http://proctools.sourceforge.net/)

#### Text Browsing

- [cheat](https://github.com/cheat/cheat)
- [links](http://links.twibright.com/)
- [tldr pages](https://tldr.sh)

#### Text editors

- [GNU Nano](https://www.nano-editor.org)
- [Vim](https://www.vim.org/)

#### Virtualizations

- [act](https://github.com/nektos/act)
- [Parallels Virtualization SDK](https://www.parallels.com/products/desktop/download/)
- [Vagrant](https://www.vagrantup.com/)
  - plugins (via Vagrant)
    - [Vagrant AWS Provider](https://github.com/mitchellh/vagrant-aws)
    - [Vagrant Parallels Provider](https://parallels.github.io/vagrant-parallels/)
    - [Vagrant Reload Provisioner](https://github.com/aidanns/vagrant-reload)
    - [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest)

#### Others

- [mas-cli](https://github.com/mas-cli/mas)
- [Nyancat CLI](http://nyancat.dakko.us/)

</details>
<!-- markdownlint-enable MD033 -->

<!-- markdownlint-disable MD033 -->
<details><summary>Desktop Apps</summary>

Apps that exist in the Mac App Store are temporarily not installed by this script. It's because the installation is unstable and very slow.  
Mac App Store からインストール可能なアプリは、このスクリプトでは暫定的にインストールしないようにしています。インストールが不安定かつ非常に低速となるためです。

| note | description          |
| :--: | :------------------- |
| `-M` | without M1 Processor |

#### Audios, Videos, and Broadcasting

- [OBS Studio](https://obsproject.com/)
- [Rogue Amoeba Audio Hijack](https://rogueamoeba.com/audiohijack/)
- [Rogue Amoeba Loopback](https://rogueamoeba.com/loopback/)

#### Cloud storages

- [Adobe Creative Cloud](https://www.adobe.com/creativecloud.html)
- [Dropbox](https://www.dropbox.com/)
- [OmniPresence](https://www.omnigroup.com/more)

#### Development

- [Android Studio](https://developer.android.com/studio)
- [Blender](https://www.blender.org/)
- [React Native Debugger](https://github.com/jhen0409/react-native-debugger)
- [Unity Hub](https://unity3d.com/)

#### Devices

- [scrcpy](https://github.com/Genymobile/scrcpy)
- [Canon Satera MF Printer driver](https://cweb.canon.jp/satera/mfp/)
- [Drobo Dashboard](https://www.drobo.com/)
- [Haptic Touch Bar](https://www.haptictouchbar.com/)
- [logicool G Hub](https://gaming.logicool.co.jp/innovation/g-hub.html)
- [Raspberry Pi Imager](https://www.raspberrypi.org/software/)

#### Documents and Office apps

- [Manta](https://getmanta.app)

#### Games

- [Minecraft Java Edition](https://www.minecraft.net/)
- [Steam](https://store.steampowered.com/)
- [Stepmania](https://www.stepmania.com/)

#### Memos and Tasks

- [Boost Note](https://boostnote.io/)
- [Grammarly](https://www.grammarly.com/)
- [Notion](https://www.notion.so/)

#### Messaging and Socials

- [Discord](https://discord.com/)
- [Gitter](https://gitter.im/)
- `(-M)` [Keybase](https://keybase.io/)
  - Keybase app is distributed only M1 Mac in the Mac App Store.
- [Mattermost / with CLI tools](https://mattermost.com/)
- [Microsoft Skype](https://www.skype.com/)
- [Zoom](https://zoom.us/)

#### Remote

- [Real VNC Viewer](https://www.realvnc.com/connect/download/viewer/)
- [TeamViewer](https://www.teamviewer.com/)

#### Terminal

- [term](https://github.com/liyanage/macosx-shell-scripts/blob/master/term)
- [terminal-notifier](https://github.com/julienXX/terminal-notifier)

#### Text editors

- [GitHub Atom Editor](https://atom.io/)
- [Sublime Text](https://www.sublimetext.com/)
- [Visual Studio Code](https://code.visualstudio.com/)

#### Virtualizations

- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- [Parallels Desktop](https://www.parallels.com/)
- `(-M)` [Oracle VM Virtualbox + Extension Pack](https://www.virtualbox.org/)

#### Web browsers

- [Google Chrome](https://www.google.com/chrome/)
- [Chromium](https://www.chromium.org/Home)
- [Mozilla Firefox ESR](https://www.mozilla.org/firefox/)

</details>
<!-- markdownlint-enable MD033 -->

<!-- markdownlint-disable MD033 -->
<details><summary>Fonts</summary>

- [白源: HackGen Nerd](https://github.com/yuru7/HackGen)
- [IBM Plex](https://www.ibm.com/plex/)
- [Lato](https://fonts.google.com/specimen/Lato)
- [Meslo LG](https://github.com/andreberg/Meslo-Font)

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
- Upgrade the Anyenv / Nodenv / Node.js

</details>
<!-- markdownlint-enable MD033 -->
<!-- markdownlint-enable MD024 -->

### Initialize for Zsh / Prezto

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

## Playground

```sh
./test
```

This script can only run on macOS and Ubuntu.
It also automatically installs Virtualbox and Vagrant as needed.  
このスクリプトは macOS および Ubuntu でのみ動作可能です。
また、必要に応じて Virtualbox と Vagrant を自動的にインストールします。

If you have Vagrant and the virtualization environment installed, you can also start it with the following command.  
もし Vagrant と仮想環境がインストール済みである場合、下記のコマンドで起動してしまっても構いません。

```sh
vagrant up
```

## License

MIT
