class Member::Base < ApplicationController
    private def login_member_now
        if session[:ramen_member_id]
            @login_member_now ||=
              RamenMember.find_by(id: session[:ramen_member_id])
        end
    end

    def authenticate_user
        if @login_member_now == nil
          redirect_to("/login")
        end
    end
    helper_method :login_member_now
    before_action :authenticate_user, only: [:show, :edit, :update, :destroy]
end