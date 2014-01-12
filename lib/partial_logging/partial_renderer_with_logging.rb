require 'action_view'

class PartialLogging::PartialRendererWithLogging < ActionView::PartialRenderer

  # @return [ActionView::OutputBuffer]
  def render(context, options, block)
    content = super(context, options, block)
    identifier = @template ? @template.identifier : @path
    if @lookup_context.rendered_format == :html
      output_buffer = ActionView::OutputBuffer.new
      output_buffer.safe_concat """
      <!-- START #{identifier} -->
        #{content}
      <!-- END #{identifier} -->
      """
      content = output_buffer
    end
    content
  end
end
