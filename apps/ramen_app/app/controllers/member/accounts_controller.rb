class Member::AccountsController < Member::Base
    def show
        @ramen_member = login_member_now
    end
end
