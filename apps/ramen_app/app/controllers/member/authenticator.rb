class Member::Authenticator
    def initialize(ramen_member)
        @ramen_member = ramen_member
    end

    def authenticate(raw_password)
        @ramen_member &&
        @ramen_member.hashed_password &&
        BCrypt::Password.new(@ramen_member.hashed_password) == raw_password
    end
end