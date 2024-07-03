module ApplicationHelper
    def on_index_page?
        controller.controller_name == 'items' && controller.action_name == 'index'
    end
end
