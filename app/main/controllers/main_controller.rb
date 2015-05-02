module Main
  class MainController < Volt::ModelController
    def index
    end

    def about
    end

    private

    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    def color_for_flash_key(key)
      case key
      when 'successes'
        'green'
      when 'errors'
        'red'
      else
        ''
      end
    end
  end
end
