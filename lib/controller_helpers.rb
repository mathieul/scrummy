module ControllerHelpers
  def set_notice(content)
    page._the_notice = content
    %x{ setTimeout(function () { self.$clear_notice(); }, 2000); }
  end

  def clear_notice
    page._the_notice = ''
  end

  def set_error(content)
    page._the_error = content
    %x{ setTimeout(function () { self.$clear_error(); }, 5000); }
  end

  def clear_error
    page._the_error = ''
  end
end
