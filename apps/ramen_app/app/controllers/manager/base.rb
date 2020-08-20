class Manager::Base < ApplicationController
    def login_manager_now
        if session[:ramen_manager_id]
            @login_manager_now ||=
              RamemManager.find_by(id: session[:ramen_manager_id])
        end
    end

    helper_method :login_manager_now
end