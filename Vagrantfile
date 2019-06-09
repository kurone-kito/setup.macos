# -*- mode: ruby -*-
# vi: set ft=ruby :

unless Vagrant.has_plugin?('vagrant-reload')
  raise 'vagrant-reload is not installed!'
end

audio_driver = case RUBY_PLATFORM
  when /linux/
    'alsa'
  when /darwin/
    'coreaudio'
  when /cygwin|mswin|mingw|bccwin|wince|emx/
    'dsound'
  else
    raise 'Unknown RUBY_PLATFORM=#{RUBY_PLATFORM}'
  end
guest_iso = case RUBY_PLATFORM
  when /linux/
    '/usr/share/virtualbox/VBoxGuestAdditions.iso'
  when /darwin/
    '/Applications/VirtualBox.app/Contents/MacOS/VBoxGuestAdditions.iso'
  when /cygwin|mswin|mingw|bccwin|wince|emx/
    '%PROGRAMFILES%/Oracle/VirtualBox/VBoxGuestAdditions.iso'
  else
    raise 'Unknown RUBY_PLATFORM=#{RUBY_PLATFORM}'
  end


Vagrant.configure('2') do |config|
  config.vm.box = 'yzgyyang/macOS-10.14'
  config.vm.box_check_update = true
  config.vm.provider 'virtualbox' do |vb|
    vb.gui = true
    vb.cpus = 2
    vb.linked_clone = true
    vb.name = 'macOS'
    vb.memory = '6144'
    vb.customize [
      'modifyvm', :id,
      '--accelerate3d', 'on', # default: off
      '--acpi', 'on', # default: on
      '--apic', 'on', # default: on
      '--audio', audio_driver,
      '--audiocontroller', 'hda', # default ac97
      '--biosapic', 'x2apic', # default: apic
      '--bioslogofadein', 'on',
      '--bioslogofadeout', 'on',
      '--chipset', 'ich9', # default: ich9
      '--clipboard', 'bidirectional', # default: disabled
      '--draganddrop', 'bidirectional', # default: disabled
      '--firmware', 'efi64', # default: efi
      '--hpet', 'on', # default: off
      '--hwvirtex', 'on', # default: on
      '--ioapic', 'on', # default: on
      '--keyboard', 'usb', # default: usb
      '--largepages', 'on', # default: on
      '--longmode', 'on', # default: on
      '--nestedpaging', 'on', # default: on
      '--pae', 'on', # default: on
      '--paravirtprovider', 'minimal', # default: default
      '--rtcuseutc', 'off', # default: on
      '--usbxhci', 'on', # default: on
      '--vram', '128', # default: 128
      '--vtxvpid', 'on', # default: on
      '--vtxux', 'on', # default: on
      '--x2apic', 'on', # default: off
    ]
    vb.customize [
      'storageattach', :id,
      '--storagectl', 'SATA Controller',
      '--port', '2',
      '--type', 'dvddrive',
      '--medium', guest_iso
    ]
  end
  config.vm.synced_folder '.', '/vagrant', type: 'rsync', owner: 'vagrant', group: 'staff'
  config.vm.provision 'Allow all applications to run', type: 'shell', inline: 'spctl --master-disable'
  config.vm.provision 'Install VBGuest addons', type: 'shell', inline: 'cd /Volumes/VBox_GAs_*; installer -pkg VBoxDarwinAdditions.pkg -target /'
  config.vm.provision 'Restore the allow all applications to run', type: 'shell', inline: 'spctl --master-enable'
  # config.vm.provision 'Start setup', type: 'shell', inline: '/vagrant/setup'
end
