require './lib/gaee/version.rb'

# GeekApk Gem Specification

Gem::Specification.new do |s|
  make_fs = proc { |fs| fs.map { |f| "lib/gaee/#{f}.rb" } }

  s.name        = 'gaee'
  s.version     = Gaee::VERSION
  s.executables << 'gaee'
  s.date        = '2018-02-17'
  s.summary     = 'GeekApk API Binding'
  s.description = 'GeekApkR CLI and Server API Binding for Ruby'
  s.authors     = ['duangsuse']
  s.email       = 'fedora-opensuse@outlook.com'
  s.files       = make_fs.call %w[metapi misc models realtime version cli]
  s.files       << 'lib/gaee.rb'
  s.homepage    = 'https://geekapk.org'
  s.license     = 'MIT'
end
