# require 'compass/import-once/activate'
# Require any additional compass plugins here.

require 'breakpoint'
require 'sass-globbing'

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "app/assets/stylesheets"
sass_dir = "app/assets/scss"
images_dir = "public/images"
javascripts_dir = "app/assets/javascripts"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false

preferred_syntax = :scss

output_style = :expanded
line_comments = true

# This is where the magic happens, nothing too fancy though...
# on_stylesheet_saved do
#   `compass compile -c config_prod.rb --force`
# end
