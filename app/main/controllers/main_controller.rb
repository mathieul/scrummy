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
  end
end
