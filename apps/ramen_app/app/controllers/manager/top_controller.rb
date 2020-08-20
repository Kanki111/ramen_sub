class Manager::TopController < Admin::Base
    def index
        render action: "index"
    end
end
