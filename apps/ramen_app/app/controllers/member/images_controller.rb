class Member::ImagesController < Member::Base
    def index
      @member_posts = Member::Post.all
      @member_posts = Member::Post.page(params[:page]).per(15)
    end
end