class Gaee
  # Misc modules like Option modules
  module Misc
    module FilterOption
    end

    module SortOption
      def created; 'created'; end
    end

    module UserFilterOption
    end

    module UserSortOption
      def created; 'created'; end
      def online; 'online'; end
    end
  end
end
