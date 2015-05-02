module Main
  class DailyController < Volt::ModelController
    def index
      self.model = store._daily_sections#.limit(100).sort(position: 1)
    end

    def edit_url(section)
      url_with(action: 'edit', section_id: section._id)
    end

    def pluralize(count, word)
      "#{count} #{count == 1 ? word : "#{word}s"}"
    end
  end
end
