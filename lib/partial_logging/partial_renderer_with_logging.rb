require 'action_view'

class PartialLogging::PartialRendererWithLogging < ActionView::PartialRenderer

  # @return [ActionView::OutputBuffer]
  def render(context, options, block)
    content = super(context, options, block)
    identifier = @template ? @template.identifier : @path
    if @lookup_context.rendered_format == :html
      output_buffer = ActionView::OutputBuffer.new
      output_buffer.safe_concat """
      <!-- START #{formatted_partial_identifier(identifier)} -->
        #{content}
      <!-- END #{formatted_partial_identifier(identifier)} -->
      """
      content = output_buffer
    end
    content
  end

  def formatted_partial_identifier(identifier)
    if PartialLogging.config.absolute_path?
      identifier
    else
      identifier.sub(/#{Rails.root.to_s}/, '(app root)')
    end
  end
end
