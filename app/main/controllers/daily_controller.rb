module Main
  class DailyController < Volt::ModelController
    def index
      self.model = store._daily_sections.limit(100)#.order(position: 1)
    end

    def edit
    end
  end
end
