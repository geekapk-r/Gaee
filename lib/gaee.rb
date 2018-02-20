require 'logger'

require 'json'
require 'open-uri'

LOG = Logger.new STDOUT

begin
  require 'em-websocket'
rescue LoadError
  LOG.warn('Failed to require WebSocket library, Gaee will not handle messages')
end

require 'gaee/version'
require 'gaee/models'

# GeekApk Client Library
class Gaee
  MODELS = [Post, PM, Comment, MessageRecord, Rank, App, Update, Recommend, User, Headline, Category]

  def version
    VERSION
  end

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
  end

  Connect = default_connect
  Ident = default_ident
end
