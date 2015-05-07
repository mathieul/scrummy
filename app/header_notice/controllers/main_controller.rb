module HeaderNotice
  class MainController < Volt::ModelController
    def notice_available?
      return true if page._reloading
      return true if channel.status == :reconnecting
      return true if page._reconnected

      flash_present?
    end

    def color_for_flash_key(key)
      case key
      when 'notices'
        'blue'
      when 'successes'
        'green'
      when 'errors'
        'red'
      else
        ''
      end
    end

    private

    def flash_present?
      flash.keys.any? { |key|
        flash[key].present?
      }
    end
  end
end
