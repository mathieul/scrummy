# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    def index
    end

    def edit
    end

    def about
    end

    private

    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end
  end
end
