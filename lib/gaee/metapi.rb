class Gaee
  # GeekApkR meta APIs library
  module Meta
    class << self
      def info; end

      def special; end

      def version; end

      def register(auth, gistid, inithash); end

      def reset(auth, gistid, newhash); end

      def new_user(inithash); end

      def hash_okay_for?(hash, uid = Gaee::Ident[:uid]); end

      def token(newtoken); end

      def token_okay_for?(tok, uid = Gaee::Ident[:uid]); end

      def blame(app, text, *reversion); end
    end
  end
end
