class Member::SessionsController < Member::Base
    def new
        if login_member_now
            redirect_to :member_root
        else
            @form = Member::LoginForm.new
            render action: "new"
        end
    end

    def create
        @form = Member::LoginForm.new(params[:member_login_form])
        if @form.email.present?
            ramen_member =
              RamenMember.find_by("LOWER(email) = ?", @form.email.downcase)
        end
        if ramen_member
            session[:ramen_member_id] = ramen_member.id
            flash.notice = "ログインに成功しました。"
            redirect_to :member_root
        else
            flash.now.alert = "メールアドレスまたはパスワードが違います。"
            render action: "new"
        end
    end

    def destroy
        session.delete(:ramen_member_id)
        flash.notice = "ログアウトしました。"
        redirect_to :member_root
    end
end
