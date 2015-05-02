module DailySectionViewer
  class MainController < Volt::ModelController
    def index
      self.model = attrs.data_section
    end

    def edit
    end
  end
end
