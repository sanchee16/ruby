require 'rails/generators'

module Bootswatch
  module Generators
    class ImportGenerator < ::Rails::Generators::NamedBase

      def theme_name
        file_name
      end

      def theme_directory
        if class_path.empty?
          theme_name
        else
          class_path.first
        end
      end

      def theme_repo_url
        #TODO: change for 3.0.0 release
       "https://raw.github.com/thomaspark/bootswatch/gh-pages/2/#{theme_name}"
      end

      def import_less

        stylesheets_dest_path = "app/assets/stylesheets/#{theme_directory}"
        empty_directory stylesheets_dest_path

        get File.join(theme_repo_url,'variables.less'), File.join(stylesheets_dest_path,'variables.less')


        get File.join(theme_repo_url,'bootswatch.less'), File.join(stylesheets_dest_path,'bootswatch.css.less')

        prepend_to_file File.join(stylesheets_dest_path,'bootswatch.css.less') do
          "@import \"#{theme_name}/base\";\n\n"
        end

        gsub_file File.join(stylesheets_dest_path,'variables.less'),
                  '"../img/glyphicons-halflings.png"',
                  '"twitter/bootstrap/glyphicons-halflings.png"'

        gsub_file File.join(stylesheets_dest_path,'variables.less'),
                  '"../img/glyphicons-halflings-white.png"',
                  '"twitter/bootstrap/glyphicons-halflings-white.png"'

      end

    end
  end
end
