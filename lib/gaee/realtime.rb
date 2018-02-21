require 'faye/websocket'
require 'eventmachine'

class Gaee
  ##
  # GeekApk push API library
  # GeekApk WebSocket API:
  # ws://geekapk.org
  # send user id with hash to login
  # logined user can have private notifications
  module Realtime
    class << self
      SHEADLINE = :HEADLINE
      SPOST = :POST
      SNEWAPP = :NEWAPP
      SNEWUPD = :NEWUPD
      SNEWTOPIC = :NEWTOPIC
      SNEWS = :NEWS
      SNEWREC = :NEWRECORD

      def handle(_message = SPOST)
        raise ArgumentError, 'Must have procdure' unless block_given?
      end

      def connect; end

      def authorize; end

      def connected?; end

      def close; end

      HANDLERS = {
        HEADLINE: nil,
        POST: nil,
        NEWAPP: nil,
        NEWUPD: nil,
        NEWTOPIC: nil,
        NEWS: nil,
        NEWRECORD: nil
      }.freeze
      CONNECTION = nil
    end
  end
end
