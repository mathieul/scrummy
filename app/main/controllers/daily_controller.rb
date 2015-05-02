module Main
  class DailyController < Volt::ModelController
    def index
      self.model = store._daily_sections
    end

    def edit
      self.model = store._daily_sections.where(_id: params._section_id).fetch_first
    end

    def add_task
      if page._new_task._label.present?
        model.daily_tasks << {label: page._new_task._label, position: model.daily_tasks.count + 1}
        page._new_task!._label = ''
      end
    end

    def edit_url(section)
      url_with(action: 'edit', section_id: section._id)
    end

    def pluralize(count, word)
      "#{count} #{count == 1 ? word : "#{word}s"}"
    end
  end
end
