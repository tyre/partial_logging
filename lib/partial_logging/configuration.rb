module PartialLogging
  class Configuration
    attr_writer :absolute_path

    def log_partials(&block)
      @log_partials = block
    end

    def log_partials?
      @log_partials && @log_partials.call
    end

    # If true, render the absolute path to the partial,
    # otherwise render '(app root)/app/views/chill/_sauce.html.erb'
    def absolute_path(show_full_path=nil)
      if show_full_path.nil?
        @absolute_path
      else
        self.absolute_path = show_full_path
      end
    end

    def absolute_path?
      !!absolute_path
    end
  end
end
