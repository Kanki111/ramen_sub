class RamenMember < ApplicationRecord
    def password=(login_password)
        if login_password.kind_of?(String)
            self.hashed_password = BCrypt::Password.create(login_password)
        elsif login_password.nil?
            self.hashed_password = nil
        end
    end
end
