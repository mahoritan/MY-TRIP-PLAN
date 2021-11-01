class CommentsController < ApplicationController

  def create
    plan = Plan.find(params[:plan_id])
    comment = current_user.comments.new(comment_params)
    comment.plan_id = plan.id
    comment.save
    redirect_to plan_path(plan.id)
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_text)
  end

end
