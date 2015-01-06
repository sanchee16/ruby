module Twitter
  module Bootswatch
    module BreadcrumbsHelper
      def render_breadcrumbs(divider = '/')
        render :partial => 'twitter/bootswatch/breadcrumbs', :locals => { :divider => divider }
      end
    end
  end
end
