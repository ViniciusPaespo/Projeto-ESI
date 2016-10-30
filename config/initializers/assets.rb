# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( normalize.css )
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( slicknav.min.css )
Rails.application.config.assets.precompile += %w( user.css )

Rails.application.config.assets.precompile += %w( jquery.maskedinput.min.js )
Rails.application.config.assets.precompile += %w( jquery-1.9.1.min.js )
Rails.application.config.assets.precompile += %w( modernizr-2.7.1.min.js )
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( jquery-1.9.1.min.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( jquery.slicknav.min.js )
Rails.application.config.assets.precompile += %w( jquery.fittext.js )
Rails.application.config.assets.precompile += %w( jquery.fadethis.js )
Rails.application.config.assets.precompile += %w( user.js )

Rails.application.config.assets.precompile += %w( imagesloaded.js )
Rails.application.config.assets.precompile += %w( skrollr.js )
Rails.application.config.assets.precompile += %w( _main.js )

