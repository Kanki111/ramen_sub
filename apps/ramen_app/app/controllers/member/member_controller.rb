class Member::MemberController < Member::SessionsController
    def index
        @member = RamenMember.order(:name)
    end
    def new
        @ramen_member = RamenMember.new
    end

    def show
        @ramen_member = login_member_now
    end

    def create
        @ramen_members = RamenMember.new(ramen_member_params)
        if @ramen_members.save
            flash.notice = "アカウントが作成されました。"
            redirect_to :member_login
        else
            render action: "new"
        end
    end

    def ramen_member_params
        params.require(:ramen_member).permit(
            :email, :password, :name,
        )
    end
end
