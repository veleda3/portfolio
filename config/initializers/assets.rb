# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( owl.carousel.min.js )
Rails.application.config.assets.precompile += %w( scrolling-nav.js )
Rails.application.config.assets.precompile += %w( jquery.easing.min.js )
Rails.application.config.assets.precompile += %w( jquery.shuffle.min.js )
Rails.application.config.assets.precompile += %w( custom.js )
Rails.application.config.assets.precompile += %w( google_analytics.js )
Rails.application.config.assets.precompile += %w( jquery.countTo.js )
Rails.application.config.assets.precompile += %w( map.js )
Rails.application.config.assets.precompile += %w( validator.min.js )
Rails.application.config.assets.precompile += %w( tether.min.js )

Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( animate.css )
Rails.application.config.assets.precompile += %w( home.css )
Rails.application.config.assets.precompile += %w( linear-icons.css )
Rails.application.config.assets.precompile += %w( owl.carousel.css )
Rails.application.config.assets.precompile += %w( owl.theme.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( font-awesome.min.css )



# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
