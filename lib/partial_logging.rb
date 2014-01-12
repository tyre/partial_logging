require 'partial_logging/configuration'
require 'partial_logging/partial_renderer_with_logging'
require 'partial_logging/action_view'

module PartialLogging

  def config
    if block_given?
      yield configuration
    else
      configuration
    end
  end

  private

  def configuration
    @configuration ||= Configuration.new
  end

end
