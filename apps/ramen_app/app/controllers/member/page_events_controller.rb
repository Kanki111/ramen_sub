class MemberEventsController < Member::Base
    def index
        if params[:ramen_member_id]
            @member_posts = Member::Post.find(params[:ramen_member_id])
            @events = @member_posts.events.order(occurred_at: :desk)
        else
            @events =MemberEvent.order(occured_at: :desk)
        end
        @events = @emember_post.page(params[:page]).per(10)
    end
end