class ApplicationController < ActionController::Base
    layout :ramen_app_set_layout

    def ramen_app_set_layout
        "member"
    end
end
