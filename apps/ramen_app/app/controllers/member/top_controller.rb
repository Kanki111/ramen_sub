class Member::TopController < Member::Base
    def index
        render action: "index"
    end
end
