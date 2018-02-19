require './lib/version.rb'

# GeekApk Gem Specification

Gem::Specification.new do |s|
  make_files = proc {|s| s.map { |f| "lib/#{f}.rb" } }

  s.name        = 'gaee'
  s.version     = Gaee::VERSION
  s.executables << 'gaee'
  s.date        = '2018-02-17'
  s.summary     = 'GeekApk API Binding'
  s.description = 'GeekApkR CLI and Server API Binding for Ruby'
  s.authors     = ['duangsuse']
  s.email       = 'fedora-opensuse@outlook.com'
  s.files       = make_files.call %w[gaee metapi misc models realtime version]
  s.homepage    = 'https://geekapk.org'
  s.license     = 'MIT'
end
