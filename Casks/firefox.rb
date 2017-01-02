cask 'firefox36' do
  version '36.0'

  language 'en', default: true do
    sha256 '97ccc2f03a8af73903b0cae61e17a7b9f336fe320592380f1c811dbc3b0e9e5a'
    'en-US'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
