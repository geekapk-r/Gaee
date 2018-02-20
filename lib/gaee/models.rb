require 'gaee/misc'

# GeekApk Models in Ruby
class Gaee
  # Category
  class Category
    def initialize(id)
      @id, @name, @desc, @super_ = nil
      @fetched = false
    end

    %w[name desc super].each do |m|
      define_method m do
      end

      define_method "#{m}=" do
      end
    end

    def delete
    end

    def parent
    end

    def childs
    end

    def apps(filter = nil, sort = SortOption.created, reverse = false, super_super = false)
    end

    def fetch
    end

    class << self
      def new_model(name, desc = "", super_ = nil)
      end

      def all
      end

      def toplev
      end

      def tree
      end
    end

    attr_accessor :id, :fetched
  end

  # Application
  class App
    def initialize(id)
      @id, @graph_flag, @parent, @parent_parent, @creator, @pkgname, @name, @app_alias, @applayout, @optbtn,
      @blame, @installurl, @removeurl, @apimin, @apitar, @size, @version, @reversion, @special, @desc,
      @updates, @lang, @srcurl, @homeurl, @license, @perm, @dev, @root_stat, @need_touch, @need_framework,
      @created_at, @updated_at, @stars, @count, @rank, @rank_avg, @replies, @pinned_messages = nil
      @fetched = false
    end

    attr_accessor :id
  end

  # Application Upadte
  class Update
    def initialize(target_aid)
      @target, @graph_flag, @name, @new_alias, @optbtn, @blame, @installurl, @removeurl, @apimin, @apitar,
      @size, @version, @reversion, @updates, @perm, @released_at = nil
    end
  end

  # Recommend
  class Recommend
    def initialize
      @target, @recommend, @uid, @reason, @created_at = nil
    end
  end

  # User
  class User
    def initialize(id)
      @id, @name, @user_alias, @email, @bio, @github, @superapp, @created_at, @online_at, @followers, @followed = nil
      @fetched = false
    end

    %w[name user_alias email bio superapp online_at].each do |m|
      define_method m do
      end

      define_method "#{m}=" do
      end
    end

    %w[github created_at followers followed].each do |m|
      define_method m do
      end
    end

    def delete
    end

    def get_avatar
    end

    def avatars
    end

    def avatar(id = nil)
      get_avatar if id.nil?
    end

    def avatar=(avatar)
    end

    def delete_avatar(id)
    end

    class << self
      def new_model(password)
      end

      def all(sort = UserSortOption.online, filter = nil)
      end

      def search(text, sort = UserSortOption.online, filter = nil)
      end
    end

    attr_accessor :id, :fetched
  end

  # Comment
  class Comment
    def initialize(cmid)
      @id, @sender, @target, @cid, @reply_to, @text, @created_at, @updated_at, @stars, @count, @replies, @is_pop = nil
      @fetched = false
    end

    %w[sender target cid reply_to text created_at updated_at stars count replies is_pop].each do |m|
      define_method m do
      end
    end

    def text=
    end

    alias is_pop? is_pop

    def detail_replies
    end

    def parent
    end

    def delete
    end

    def fetch
    end

    class << self
      def new(target, text, replys = nil)
      end

      def locate(target, cid)
      end

      def all(starts, ends, filter = nil, sort = SortOption.created, reverse = false, is_pop = false, toplev = true)
      end

      def in_app(aid, starts, ends, filter = nil, sort = SortOption.created, reverse = false, toplev = true)
      end

      def search(text, inapp = nil, filter = nil, sort = SortOption.created, reverse = false, show_pop = true, toplev = false)
      end
    end

    attr_accessor :id, :fetched
  end

  # Headline
  class Headline
    def initialize(id)
      @id, @graph_flag, @badge, @label, @link, @created_at, @is_open = nil
    end
  end

  # Post
  class Post
    def initialize
      @from, @target, @type, @cmid, @created_at = nil
    end
  end

  # PM
  class PM
    def initialize(id)
      @id, @user, @type, @accessable_to, @text, @created_at, @updated_at = nil
    end
  end

  # Message Record
  class MessageRecord
    def initialize(uid)
      @user, @cmid, @created_at = nil
    end
  end

  # Rank
  class Rank
    def initialize
      @target, @user, @rank, @created_at = nil
    end
  end
end
