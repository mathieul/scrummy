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

    def edit_ready
      my_container = container
      %x{
        var found = jQuery(my_container).find('.ui .checkbox');
        console.log("size: " + found.size() + " - found:", found);
        if (found.size() > 0) {
          found.checkbox();
        }
      }
    end

    def remove_task(task)
      task.destroy
      set_notice "task was deleted"
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

    def toggle_header
      Element.find(".ui.header").toggle()
      Element.find(".ui.message").toggle()
    end
  end
end
