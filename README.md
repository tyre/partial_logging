# Partial Logging

For figuring out where the heck this HTML is coming from.

This has been used successfully in Rails 3.2 and 4.1 applications, but as it relies on
the internal state of Rails may break at any time.

Be smart and don't use in production :)

## Configuration

The most important configuration options is `log_partials`.
This takes a block that should return true or false, which will be executed to determine whether or not to log partials.

```ruby
# config/initializers/partial_logging.rb
require 'partial_logging'

PartialLogging.config do |config|
  config.log_partials do
    Rails.env.development?
  end

  # Other config options:

  # absolute_path: whether to show the full file system path or just
  # `(app_root)/app/views/partials/_party.html.erb`
  # Default: false
  # config.absolute_path true
end
```

When the result is true, your HTML will have comments showing which partials were rendered.
See [this helpful post](http://lynn.io/2014/01/11/commenting-partials/) (made before the source code was gemified) to check out what this looks like.
