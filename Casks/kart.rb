cask 'kart' do
  version '0.8.0'
  sha256 '2b43e59f686de010c5e1ddf1a42290b79b1b459fcf9b6e41ddc73e631339b2a8'

  # github.com/koordinates/sno was verified as official when first introduced to the cask
  url "https://github.com/koordinates/sno/releases/download/v#{version}/Kart-#{version}.pkg"
  appcast 'https://github.com/koordinates/sno/releases.atom'
  name 'Kart'
  homepage 'https://kartproject.org'

  pkg "Kart-#{version}.pkg"

  uninstall pkgutil: 'com.koordinates.Sno.SnoCore'
end