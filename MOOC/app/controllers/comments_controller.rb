class CommentsController < ApplicationController
  before_action :find_lec_id
  before_action :authenticate_user!

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    # @comment = Comment.new(comment_params)
    @comment = @lecture.comments.create(params[:comment].permit(:content))
    @comment.user_id = current_user.id
    @comment.save

    if @comment.save
      redirect_to @lecture
    else
      render 'new'
    end
    # respond_to do |format|
    #   if @comment.save
    #     format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
    #     format.json { render :show, status: :created, location: @comment }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @comment.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      puts @lecture
      @comment = Comment.find(params[:id])
    end
    def find_lec_id
      @lecture=Lecture.find(params[:lecture_id]);
      puts 'habllllll'

    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :user_id, :lecture_id)
      puts "de al lecture id"
      puts :lecture_id
    end
end
