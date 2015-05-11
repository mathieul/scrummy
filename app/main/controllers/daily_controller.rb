require 'controller_helpers'

module Main
  class DailyController < Volt::ModelController
    include ControllerHelpers

    def index
      self.model = store._daily_sections
    end

    def edit
      self.model = store._daily_sections.where(_id: params._section_id).fetch_first
    end

    private

    def add_task
      if page._new_task._label.present?
        store._daily_tasks << { label: page._new_task._label,
                                position: model.daily_tasks.count + 1,
                                daily_section_id: model._id }
        page._new_task!._label = ''
        set_notice "task was added"
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
