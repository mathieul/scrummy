require 'controller_helpers'

module Main
  class MainController < Volt::ModelController
    include ControllerHelpers

    def index
    end

    private

    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end
  end
end
