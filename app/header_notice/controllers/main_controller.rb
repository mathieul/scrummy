module HeaderNotice
  class MainController < Volt::ModelController
    def notice_available?
      return true if page._reloading
      return true if channel.status == :reconnecting
      return true if page._reconnected
      return true if page._the_notice.present?
      return true if page._the_error.present?

      false
    end
  end
end
