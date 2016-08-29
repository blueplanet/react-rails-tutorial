class Api::V1::CommentsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @data = Comment.all
  end

  def create
    @comment = Comment.create(comment_params)
    head :ok
  end

  private

    def comment_params
      params.require(:comment).permit(:author, :text)
    end
end
