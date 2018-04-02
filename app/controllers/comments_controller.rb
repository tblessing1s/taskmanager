class CommentsController < ApplicationController
  before_action :set_task

  def index
    @comments = @task.comments
  end
end

  private
    def set_task
      @task = Task.find(params[:task_id])
    end
    def comment_params
      params.require(:comment).permit(:name, :comment)
    end
