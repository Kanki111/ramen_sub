class Member::PasswordsController < Member::Base
    def show
        redirect_to :edit_member_password
    end

    def edit
        @change_password_form = Member::ChangePasswordForm.new(object: login_member_now)
    end

    def update
        @change_password_form = Member::ChangePasswordForm.new(ramen_member_params)
        @change_password_form.object = login_member_now
        if @change_password_form.save
            flash.notice ="パスワードを変更しました。"
            render action: "edit"
        else
            flash.now.alert = "入力に誤りがあります。"
            render action: "edit"
        end
    end

    private def ramen_member_params
        params.require(:member_change_password_form).permit(
            :current_password, :new_password, :confirmation_new_password
        )
    end
end
