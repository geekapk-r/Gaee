require 'json'
require 'net/https'

begin
  require 'faye/websocket'
rescue LoadError
  warn 'Failed to require WebSocket library'
end

require 'gaee/version'
require 'gaee/models'

# GeekApk Client Library
class Gaee
  MODELS = %i[App Category Comment Headline MessageRecord PM
              Post Rank Recommend Update User].freeze

  def initialize; end

  class << self
    def default_connect
      {
        server: 'api.geekapk.org',
        port: 233
      }
    end

    def default_ident
      {
        uid: nil,
        hash: nil,
        token: nil,
        last_update_token: nil
      }
    end

    def default_pagecont; 20; end
    def version; VERSION; end
  end

  CONNECT = default_connect
  IDENT = default_ident
  PAGE = default_pagecont
end
