class ApplicationController < ActionController::Base
    layout :ramen_app_set_layout

    def ramen_app_set_layout
        if params[:controller].match(%r{\A(member|manager)/})
            Regexp.last_match[1]
        else
            "member"
        end
    end

    def authenticate_user
        if @current_user == nil
          redirect_to("/login")
        end
    end
end
