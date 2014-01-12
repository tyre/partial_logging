# Partial Logging

For figuring out where the heck this HTML is coming from.

## Configuration

There is only one configuration option at the moment, and that is `log_partials`.
This takes a block that should return true or false, which will be executed to determine whether or not to log partials.

```ruby
# config/initializers/partial_logging.rb
require 'partial_logging'

PartialLogging.config do |config|
  config.log_partials do
    Rails.env.development?
  end
end
```

When the result is true, your HTML will have comments showing which partials were rendered.
See [this helpful post](http://lynn.io/2014/01/11/commenting-partials/) (made before the source code was gemified) to check out what this looks like.