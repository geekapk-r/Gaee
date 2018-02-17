require './lib/version.rb'

Gem::Specification.new do |s|
  s.name        = 'gaee'
  s.version     = VERSION
  s.executables << 'gaee'
  s.date        = '2018-02-17'
  s.summary     = "GeekApk API Binding"
  s.description = "GeekApkR Server API Binding for Ruby"
  s.authors     = ["duangsuse"]
  s.email       = 'fedora-opensuse@outlook.com'
  s.files       = ["lib/gaee.rb"]
  s.homepage    = 'https://geekapk.org'
  s.license     = 'GPL-3.0'
end
