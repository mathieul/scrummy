module HeaderNotice
  class MainController < Volt::ModelController
    def notice_available?
      return true if page._reloading
      return true if channel.status == :reconnecting
      return true if page._reconnected

      flash_present?
    end

    private

    def flash_present?
      flash.keys.any? { |key|
        flash[key].present?
      }
    end
  end
end
