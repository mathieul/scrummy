module DailySectionViewer
  class MainController < Volt::ModelController
    def index
    end

    def index_ready
      found = Element.find(container)
      %x{console.log(found);}
    end

    def edit
    end
  end
end
