class Member::MemberController < Member::SessionsController
    def index
        @members = RamenMember.order(:name)
    end
    def new
        @ramen_members = RamenMember.new
    end

    def show
        @ramen_member = login_member_now
    end

    def create
        @ramen_members = RamenMember.new(params[:ramen_member])
        if @ramen_members.save
            flash.notice = "アカウントが作成されました。"
            redirect_to :member_login
        else
            render action: "new"
        end
    end
end
