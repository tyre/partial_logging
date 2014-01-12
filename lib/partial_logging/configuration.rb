module PartialLogging
  class Configuration

    def log_partials(&block)
      @log_partials = block
    end

    def log_partials?
      @log_partials && @log_partials.call
    end
  end
end
