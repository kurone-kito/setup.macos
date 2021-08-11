# macOS auto setup for develop environment

Desktop environment preference for macOS Big Sur (intel and M1)  
macOS Big Sur (intel / M1 両対応) 向けの作業環境セットアップスクリプト

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

Unless otherwise specified, as a general rule, install via Homebrew or Cask.  
特筆なき場合、原則として Homebrew または Cask 経由でインストールします。

<!-- markdownlint-disable MD024 -->
<!-- markdownlint-disable MD033 -->
<details><summary>CLI Apps</summary>

|  note   | description                                                                         |
| :-----: | :---------------------------------------------------------------------------------- |
| **`!`** | **DEPENDENCIES**: Removing this app may cause this setup to stop working correctly. |

#### Convert tools for Media binary

- [FFmpeg](https://www.ffmpeg.org/)
- [ImageMagick](https://imagemagick.org/index.php)
- [libvips](https://libvips.github.io/libvips/)

#### Convert tools for Texts

- [jq](https://stedolan.github.io/jq/)
- [nkf](https://osdn.net/projects/nkf/)
- [TextQL](https://github.com/dinedal/textql)

#### Development

- [asdf](http://asdf-vm.com/)
  - plugin: [asdf-nodejs](https://github.com/asdf-vm/asdf-nodejs) (via asdf)
    - [Node.js](https://nodejs.org/) (via asdf-nodejs)
      - v12 LTS Erbium
      - v14 LTS Fermium
      - v16
- **`!`** Command Line Tools for Xcode (via xcode-select CLI)
- **`!`** [gawk: GNU awk utility](https://www.gnu.org/software/gawk/)
- **`!`** [GCC: the GNU Compiler Collection](https://gcc.gnu.org)
- [lv2: LADSPA v2](https://lv2plug.in/)
- [shellcheck](https://www.shellcheck.net)

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
- **`!`** [Git](https://git-scm.com/)
  - **`!`** [Git Large File Storage](https://git-lfs.github.com/)
  - [git-delta: A viewer for git and diff output](https://github.com/dandavison/delta)
- [GitHub Hub](https://hub.github.com/)

#### Remote

- [awscli](https://aws.amazon.com/cli/)
- **`!`** [curl](https://curl.se)
- **`!`** [GNU wget](https://www.gnu.org/software/wget/)
- [Mosh](https://mosh.org)
- [inetutils: GNU network utilities](https://www.gnu.org/software/inetutils/)

#### Shell

- [Microsoft PowerShell](https://microsoft.com/PowerShell)
- [Prezto](https://github.com/sorin-ionescu/prezto) (via Git)
  - [Powerlevel10k](https://github.com/romkatv/powerlevel10k) (via Prezto)
- [The Fuck](https://github.com/nvbn/thefuck)
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
- [Parallels Virtualization SDK](https://www.parallels.com/products/desktop/download/)
- [Vagrant](https://www.vagrantup.com/)
  - plugins (via Vagrant)
    - [Vagrant AWS Provider](https://github.com/mitchellh/vagrant-aws)
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
|  `-M`   | without M1 Processor                                                                |

#### Audios, Videos, and Broadcasting

- [Apple GarageBand](https://www.apple.com/mac/garageband/) (via Mac App Store)
- [Apple iMovie](https://www.apple.com/imovie/) (via Mac App Store)
- [OBS Studio](https://obsproject.com/)
- [Rogue Amoeba Audio Hijack](https://rogueamoeba.com/audiohijack/)
- [Rogue Amoeba Loopback](https://rogueamoeba.com/loopback/)

#### Benchmark

- [Blackmagic Disk Speed Test](https://apps.apple.com/app/blackmagic-disk-speed-test/id425264550) (via Mac App Store)
- [GFXBench Metal](https://gfxbench.com/) (via Mac App Store)
- [MAXON Cinebench](https://www.maxon.net/ja/cinebench) (via Mac App Store)

#### Cloud storages

- [Adobe Creative Cloud](https://www.adobe.com/creativecloud.html)
- [Dropbox](https://www.dropbox.com/)
- [Microsoft OneDrive](https://www.microsoft.com/microsoft-365/onedrive)
- [OmniPresence](https://www.omnigroup.com/more)

#### Development

- [Android Studio](https://developer.android.com/studio)
- [Apple Developer](https://apps.apple.com/us/app/apple-developer/id640199958) (via Mac App Store)
- **`!`** [Apple Xcode](https://developer.apple.com/xcode/) (via Mac App Store)
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
- [Stepmania](https://www.stepmania.com/)

#### Memos and Tasks

- [Boost Note](https://boostnote.io/)
- [Grammarly](https://www.grammarly.com/)
- [Microsoft To Do](https://todo.microsoft.com/) (via Mac App Store)
- [Notion](https://www.notion.so/)
- [OmniFocus](https://www.omnigroup.com/omnifocus/) (via Mac App Store)

#### Messaging and Socials

- [Discord](https://discord.com/)
- [Facebook Messenger](https://www.messenger.com/) (via Mac App Store)
- [Gitter](https://gitter.im/)
- `(-M)` [Keybase](https://keybase.io/)
  - Keybase app is distributed only M1 Mac in the Mac App Store.
- [LINE](https://line.me/) (via Mac App Store)
- [Mattermost / with CLI tools](https://mattermost.com/)
- [Microsoft Skype](https://www.skype.com/)
- [Slack](https://slack.com/) (via Mac App Store)
- [Twitter](https://twitter.com/) (via Mac App Store)
- [Zoom](https://zoom.us/)

#### Remote

- [Apple Remote Desktop](http://www.apple.com/remotedesktop/) (via Mac App Store)
- [Microsoft Remote Desktop](https://apps.apple.com/app/microsoft-remote-desktop/id1295203466) (via Mac App Store)
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

## See also

- Depended repository: [kurone-kito/dotfiles](https://github.com/kurone-kito/dotfiles)

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
