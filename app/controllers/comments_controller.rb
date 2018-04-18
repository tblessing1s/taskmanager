class CommentsController < ApplicationController
  before_action :require_signin
  before_action :set_task

  def index
    @comments = @task.comments
  end
  def new
    @comment = @task.comments.new
  end
  def create
    @comment = @task.comments.new(comment_params)
    @comment.employee = current_employee
    if @comment.save
      redirect_to @task,
        notice: "Thank you for your Comment!"
    else
      render :new
    end
  end
end

  private
    def set_task
      @task = Task.find(params[:task_id])
    end
    def comment_params
      params.require(:comment).permit(:name, :comment)
    end
