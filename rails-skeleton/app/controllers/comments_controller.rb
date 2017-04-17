class CommentsController < ApplicationController

  def create
    p params
    p klass = params[:commentable_type].capitalize.constantize
    @commenter = klass.find(params[:commentable_id])
    @comment = @commenter.comments.create(comment_params)
    if klass == Question
      redirect_to @commenter
    elsif klass == Answer
      redirect_to @commenter.question
    end
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
