##
# Bad! GeekApk Models

require 'gaee/misc'

# GeekApk Models in Ruby
class Gaee
  ##
  # Category
  class Category
    def initialize(id)
      @id = id
      @name, @desc, @super_ = nil
      @fetched = false
    end

    # define accessors
    %w[name desc super].each do |m|
      define_method m do
      end

      define_method "#{m}=" do |v|
      end
    end

    def delete; end

    def parent; end

    def child; end

    def apps(sort = AppSortOption.updated, filter = nil, super_super = false); end

    def fetch; end

    class << self
      def create(name, desc = '', *super_); end

      def all; end

      def toplev; end

      def tree; end
    end

    attr_accessor :id, :fetched
  end

  # Application
  class App
    ATTRS = %i[graph_flag parent parent_parent creator pkgname name app_alias
               applayout optbtn blame installurl removeurl apimin apitar size version reversion
               special desc updates lang srcurl homeurl license perm dev root_stat need_touch need_framework
               created_at updated_at stars count rank rank_avg replies pinned_messages].freeze
    READ_ONLY = %i[creator blame created_at updated_at stars count rank rank_avg replies].freeze

    def initialize(id)
      @id = id
      @last_readed = 0
      @sort, @filter = nil
      ATTRS.each { |a| instance_variable_set("@#{a}", nil) }
      @fetched = false
    end

    # define accessors
    (ATTRS - READ_ONLY).each do |m|
      define_method m do
      end

      define_method "#{m}=" do |v|
      end
    end

    # define readers
    READ_ONLY.each do |m|
      define_method m do
      end
    end

    alias :developer creator
    alias :category parent

    def delete; end

    def comments(sort = SortOption.created, page = nil, *filter)
      if page.nil?
        @sort = sort
        @filter = filter
        return next_comments
      end
      limit = page * Gaee::PAGE
      starts = (page - 1) * Gaee::PAGE
      Comment.in_app(@id, starts, limit, sort, filter)
    end

    def next_comments
      limit = @last_readed + Gaee::PAGE
      starts = @last_readed
      @last_readed += Gaee::PAGE
      Comment.in_app(@id, starts, limit, @sort, @filter)
    end

    def recommends; end

    def recommended; end

    def ranks; end

    def staraganzers; end

    def parises; end

    def versions
      Update.reversions @id
    end

    def icons; end

    def icon(*rev); end

    def update_icon(rev, icon); end

    def delete_icon(rev); end

    def previews; end

    def preview(slot); end

    def update_preview(slot, image); end

    def delete_preview(slot); end

    def fetch; end

    class << self
      def create(details); end

      def all(sort = AppSortOption.updated, *filter); end

      def search(text, category = nil, sort = AppSortOption.updated, *filter); end
    end

    attr_accessor :id, :fetched, :last_readed, :sort, :filter
  end

  # Application Upadte
  class Update
    ATTRS = %w[target graph_flag name alias optbtn blame installurl removeurl
               apimin apitar size version updates perm released_at].freeze

    def initialize(target_aid, reversion)
      @target_aid = target_aid
      @reversion = reversion
      ATTRS.each { |a| instance_variable_set("@#{a}", nil) }
      @fetched = false
    end

    ATTRS.each do |m|
      define_method m do
      end

      define_method "#{m}=" do |v|
      end
    end

    def delete; end

    alias :app target

    def fetch; end

    class << self
      def create(app, details); end

      def reversions(app); end

      def check(apps); end
    end

    attr_accessor :target_aid, :reversion, :fetched
  end

  # Recommend
  class Recommend
    # Application recommend log
    class RecommendItem
      def initialize; end

      %i[recommend uid reason created].each { |s| attr_accessor s }
    end

    def initialize(target)
      @target = target
      @fetched = false
    end

    def recommends; end

    def recommended; end

    def fetch; end

    class << self
      def create(app, recommend, *reason); end

      def update(app_target, ctime, reason, *app); end

      def delete(app, *ctime); end

      def user_recommends(user); end
    end

    attr_accessor :target, :fetched
  end

  # User
  class User
    def initialize(id)
      @id = id
      @name, @user_alias, @email, @bio, @github, @superapp, @created_at, @online_at, @followers, @followed = nil
      @fetched = false
    end

    %w[name user_alias email bio superapp online_at].each do |m|
      define_method m do
      end

      define_method "#{m}=" do |v|
      end
    end

    %w[github created_at followers followed].each do |m|
      define_method m do
      end
    end

    alias :following followed

    def delete; end

    def avatars; end

    def avatar(*id)
      get_avatar if id.nil?
    end

    def update_avatar(id, avatar); end

    def delete_avatar(id); end

    def apps(sort = AppSortOption.updated, *filter); end

    def pops(sort = SortOption.created, *filter); end

    def stared(is_app = true); end

    def ranks; end

    def praised(is_app = true); end

    def news
      require 'gaae/metapi'
      Comment.in_app(Gaee::Meta)
    end

    def albums; end

    def pm(text); end

    def recommends; end

    def fetch; end

    class << self
      def create(password); end

      def all(sort = UserSortOption.online, *filter); end

      def search(text, sort = UserSortOption.online, *filter); end
    end

    attr_accessor :id, :fetched
  end

  # Comment
  class Comment
    def initialize(cmid)
      @id = cmid
      @sender, @target, @cid, @reply_to, @text, @created_at, @updated_at, @stars, @count, @replies, @is_pop = nil
      @fetched = false
    end

    %w[sender target cid reply_to text created_at updated_at stars count replies is_pop].each do |m|
      define_method m do
      end
    end

    def text=; end

    alias :is_pop? is_pop
    alias :user sender
    alias :replys reply_to
    alias :parent reply_to

    def detail_replies; end

    def staraganzers; end

    def parises; end

    def delete; end

    def fetch; end

    class << self
      def create(target, text, *replys); end

      def locate(target, cid); end

      def all(start, ends, sort = SortOption.created, filter = nil, is_pop = false, toplev = true); end

      def in_app(app, start, ends, sort = SortOption.created, filter = nil, toplev = true); end

      def num(is_pop = false); end

      def numof_target(app); end

      def search(text, inapp = nil, sort = SortOption.created, filter = nil, pop_only = false, toplev = false); end

      def replies(cmid, extra = true); end
    end

    attr_accessor :id, :fetched
  end

  # Headline
  class Headline
    def initialize(id)
      @id = id
      @graph_flag, @badge, @label, @link, @created_at, @is_open = nil
      @fetched = false
    end

    %w[graph_flag badge label link is_open].each do |m|
      define_method m do
      end

      define_method "#{m}=" do |v|
      end
    end

    alias :graph? graph_flag
    alias :graph= graph_flag=
    alias :open? is_open

    def created; end

    def fetch; end

    def close; end

    def delete; end

    def image; end

    def image=(image); end

    def delete_image; end

    class << self
      def create(badge, link = nil, label = nil, has_graph = false); end

      def all(open = true); end

      def search(text); end
    end

    attr_accessor :id, :fetched
  end

  # Post
  class Post
    # Mailbox item
    class PostItem
      def initialize; end

      %i[from target type cmid created_at].each { |s| attr_accessor s }
    end

    class << self
      def create(target, ext, type = 0); end

      def all(*type); end

      def delete(ctime); end
    end
  end

  # PM
  class PM
    def initialize(id)
      @id = id
      @user, @type, @accessable_to, @text, @created_at, @updated_at = nil
      @fetched = false
    end

    %w[type accessable_to text].each do |m|
      define_method m do
      end

      define_method "#{m}=" do |v|
      end
    end

    %w[user created_at updated_at].each do |m|
      define_method m do
      end
    end

    def fetch; end

    def delete; end

    class << self
      def create(type = 0, *accessable_to); end

      def mine(type = nil, *accessable_to); end

      def shared(user = nil, type = nil, *accessable_to); end
    end

    attr_accessor :id, :fetched
  end

  # Message Record
  class MessageRecord
    class << self
      def numof; end

      def all(start, ends); end

      def delete(ctime); end

      def delete_to(ctime); end
    end
  end

  # Rank
  class Rank
    # User rank item
    class RankItem
      def initialize; end

      %i[target user rank created_at].each { |s| attr_accessor s }
    end

    class << self
      def create(aid, rank); end

      def by_user(user); end

      def by_app(app); end

      def delete(app); end
    end
  end
end
