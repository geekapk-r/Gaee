class Gaee
  # Misc modules like Option modules
  module Misc
    # GeekApk Comment Filter Options
    module FilterOption
      class << self
      end
    end

    # GeekApk Comment Sort Options
    module SortOption
      class << self
        def created; 'created'; end
      end
    end

    # GeekApk User Filter Options
    module UserFilterOption
      class << self
      end
    end

    # GeekApk User Sort Options
    module UserSortOption
      class << self
        def created; 'created'; end
        def online; 'online'; end
      end
    end
  end
end
