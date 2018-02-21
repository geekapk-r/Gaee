require 'json'
require 'net/https'
require 'uri'

begin
  require 'faye/websocket'
rescue LoadError
  warn 'Failed to require WebSocket library'
end

require 'gaee/version'
require 'gaee/models'

# GeekApk Client Library
class Gaee
  # GeekApk Models
  MODELS = %i[App Category Comment Headline MessageRecord PM
              Post Rank Recommend Update User].freeze

  class << self
    @is_mod = nil
    # default connection information (geekapk.org)
    def default_connect
      {
        server: 'api.geekapk.org',
        port: 233
      }
    end

    # default identity information
    def default_ident
      {
        uid: nil,
        hash: nil,
        token: nil,
        last_retok: nil
      }
    end

    def default_pagecont; 20; end
    def version; VERSION; end

    def request(method, uri, *body); end

    def request!(method, uir, *body); end

    # Returns a random string includes Base64 chars
    def new_token
      (%w[? ? ? ?].map { BASE64.sample }).join(&:+)
    end

    # Token expired?
    def token_expired?
      return true if IDENT[:last_retok].nil?
      (Time.now - IDENT[:last_retok]) >= Misc::TOKEN_UPDATE_DELAY
    end

    # Renew token
    def retok
      IDENT[:last_retok] = Time.now
    end

    def server_version; end

    def api_ok?; end

    def version_match?; end

    def server_mods; end

    def auth(uid, hash); end

    def authed?
      !(IDENT[:hash].nil? || IDENT[:uid].nil?)
    end

    def mod?
      return false unless authed?
      return @is_mod unless @is_mod.nil?
      @is_mod = server_mods.include? IDENT[:uid]
    end
  end

  CONNECT = default_connect
  IDENT = default_ident
  PAGE = default_pagecont
end
