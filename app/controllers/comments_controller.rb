class CommentsController < ApplicationController
    # skip_before_action :authorized
    before_action :set_comment, only: [:show, :update, :destroy]

  def index
    @comments = Comment.all
     # @comments = Comment.where('book_id = ?', params[:book_id])
     # @comments = Comment.where('user_id = ?', params[:user_id])
     # need to figure out how to make book and user work
     render json: @comments, status: :ok
   end

   # POST /comments
   def create
     @comment = Comment.create!(comment_params)
     render json: @comment, status: :created
   end

   # GET /comments/:id
   def show
     render json: @comment, status: :ok
   end

   # PUT /comments/:id
   def update
     @comment.update(comment_params)
     # head :no_content
     render json: @comment, status: :ok
   end

   # DELETE /comments/:id
   def destroy
     @comment.destroy
     head :no_content
   end

   private

   def comment_params
     # whitelist params
     params.permit(:text, :user_id, :book_id)
   end

   def set_comment
     @comment = Comment.find(params[:id])
   end

 end
