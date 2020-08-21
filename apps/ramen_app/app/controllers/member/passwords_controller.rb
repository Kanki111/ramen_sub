class Member::PasswordsController < Member::Base
    def show
        redirect_to :edit_member_password
    end

    def edit
        @change_password = Member::ChangePassword.new(object: login_member_now)
    end

    def update
        @change_password = Member::ChangePassword.new(ramen_member_params)
        @change_password.object = login_member_now
        if @change_password.save
            flash.notice ="パスワードを変更しました。"
            render action: "edit"
        else
            flash.now.alert = "入力に誤りがあります。"
            render action: "edit"
        end
    end

    private def ramen_member_params
        params.require(:member_change_password).permit(
            :current_password, :new_password, :confirmation_new_password
        )
    end
end
