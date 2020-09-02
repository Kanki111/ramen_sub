class CommentController < Member::Base
    def create
        @member_post = Member::Post.find(params[:member_posts_id])
        @comment = Comment.new
        if @comment.save(comment_params)
            redirect_to member_post_path(@member_post), notice: "投稿されました。"
        end
    end
    def edit
    end

    def comment_params
        params.require(:comment).permit(:name, :content, :member_posts_id)
    end
end
