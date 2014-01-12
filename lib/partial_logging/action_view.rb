module ActionView
  class Renderer

    def render_partial(context, options, &block) #:nodoc:
      partial_class.new(@lookup_context).render(context, options, block)
    end

    def partial_class
      if PartialLogging.config.log_partials?
        PartialLogging::PartialRendererWithLogging
      else
        PartialRenderer
      end
    end
  end
end


