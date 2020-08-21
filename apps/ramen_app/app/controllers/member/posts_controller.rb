class Member::PostsController < Member::Base
  before_action :set_member_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user, only: [:show, :edit, :update, :destroy]

  # GET /member/posts
  # GET /member/posts.json
  def index
      @member_posts = Member::Post.all
      @member_posts = Member::Post.page(params[:page]).per(5)
  end

  # GET /member/posts/1
  # GET /member/posts/1.json
  def show
  end

  # GET /member/posts/new
  def new
    @member_post = Member::Post.new
  end

  # GET /member/posts/1/edit
  def edit
  end

  # POST /member/posts
  # POST /member/posts.json
  def create
    @member_post = Member::Post.new(member_post_params)

    respond_to do |format|
      if @member_post.save
        format.html { redirect_to @member_post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @member_post }
      else
        format.html { render :new }
        format.json { render json: @member_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member/posts/1
  # PATCH/PUT /member/posts/1.json
  def update
    respond_to do |format|
      if @member_post.update(member_post_params)
        format.html { redirect_to @member_post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_post }
      else
        format.html { render :edit }
        format.json { render json: @member_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member/posts/1
  # DELETE /member/posts/1.json
  def destroy
    @member_post.destroy
    respond_to do |format|
      format.html { redirect_to member_posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_post
      @member_post = Member::Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_post_params
      params.require(:member_post).permit(:title, :place, :ramen_type, :image)
    end

    def permit_params
      params.require(:post).permit(:title,:place,:ramen_type, :image)
    end
end
