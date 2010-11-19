module Shapado
  module Controllers
    module Routes
      def self.included(base)
        base.class_eval do
          helper_method :logo_path, :css_group_path, :favicon_group_path
        end
      end

      def logo_path(group)
        "/_files/groups/logo/#{group.id}"
      end

      def css_group_path(group)
        "/_files/groups/css/#{group.id}"
      end

      def favicon_group_path(group)
        "/_files/groups/favicon/#{group.id}"
      end

      def tag_icon_path(group,tag_name)
        if tag_name.is_a?(Tag)
          tag_name = tag_name.name
        end
        "/_files/tags/favicon/#{group.id}/#{tag_name}"
      end
    end
  end
end