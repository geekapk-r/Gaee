##
# 闲杂的类和模块们
# 可能 枚举 会比较多

class Gaee
  # Misc modules like Option modules
  module Misc
    # GeekApk Comment Filter Options
    module FilterOption
      class << self
        def user(uid)
          {
            type: 'user',
            data: uid
          }
        end

        def userlist(uids)
          {
            type: 'userlist',
            data: uids
          }
        end
      end
    end

    # GeekApk Comment Sort Options
    module SortOption
      class << self
        %w[star count replies created updated].each do |m|
          define_method m do; m; end
        end
      end
    end

    # GeekApk User Filter Options
    module UserFilterOption
      class << self
        %w[superuser hasemail hasbio hasalias inlist].each do |m|
          define_method m do |dat|
            { type: m, data: dat }
          end
        end
      end
    end

    # GeekApk User Sort Options
    module UserSortOption
      class << self
        %w[ctime online follow followed].each do |m|
          define_method m do; m; end
        end
      end
    end

    # GeekApk App Filter Options
    module AppFilterOption
      class << self
        %w[apimin updated root touch framework user].each do |m|
          define_method m do |dat|
            { type: m, data: dat }
          end
        end
      end
    end

    # GeekApk App Sort Options
    module AppSortOption
      class << self
        %w[star count replies rank rank_avg created updated size].each do |m|
          define_method m do; m; end
        end
      end
    end
  end

end
