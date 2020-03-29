module ApplicationHelper
    def active?(path)
        "avtive" if current_page?(path)
    end
end
