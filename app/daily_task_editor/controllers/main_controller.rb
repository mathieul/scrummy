require 'controller_helpers'

module DailyTaskEditor
  class MainController < Volt::ModelController
    include ControllerHelpers

    def index
      self.model = attrs.data_task
    end

    def index_ready
      my_container = container
      %x{jQuery(my_container).find('.ui .checkbox').checkbox();}
    end

    private

    def remove_task
      model.destroy
      set_notice "task was deleted"
    end
  end
end
