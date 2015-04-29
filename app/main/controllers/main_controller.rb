# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    def index
    end

    def index_ready
      `$('.menu .popup').popup({position: 'bottom center', delay: {show: 200, hide: 50}})`
    end

    def about
    end

    private

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end
  end
end
