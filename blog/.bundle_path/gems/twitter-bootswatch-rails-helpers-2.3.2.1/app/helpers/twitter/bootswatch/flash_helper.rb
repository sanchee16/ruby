module Twitter
  module Bootswatch
    module FlashHelper

      def bootswatch_flash(alert_block=false)
        alert_block_class = alert_block ? ' alert-block' : ''
        flash_messages = []
        flash.each do |type, message|
          alert_type_class = bootswatch_alert_types(type)
          text = content_tag(:div, link_to('x', '#', :class => 'close', 'data-dismiss' => 'alert') + message, :class => "alert fade in #{alert_type_class}#{alert_block_class}")
          flash_messages << text if message
        end
        flash_messages.join('\n').html_safe
      end

      def bootswatch_flash_block(alert_block=false)
        output = ''
        flash.each do |type, message|
          output << bootswatch_flash_container(type, alert_block) do
              message
          end
        end

        raw(output)
      end

      def bootswatch_flash_container(type, alert_block=false, &message)
        alert_block_class = alert_block ? ' alert-block' : ''
        alert_type_class = bootswatch_alert_types(type)
        message_text = capture(&message)
        output = content_tag(:div, :class => "alert #{alert_type_class}#{alert_block_class}") do
          content_tag(:a, '&times;'.html_safe, :class => 'close', :data => {:dismiss => 'alert'}).html_safe.safe_concat(message_text)
        end

        raw(output)
      end

      def bootswatch_alert_types(alert_type)
        case alert_type
          when :info then 'alert-info'
          when :notice, :success then 'alert-success'
          when :alert, :error then 'alert-error'
          else 'alert' # warning
        end
      end
    end

  end
end