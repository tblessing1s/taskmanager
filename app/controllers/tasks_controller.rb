class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task, notice: "Task Successfully Created!"
    else
      render :new
    end
  end

private
  def task_params
    params.require(:task).
      permit(:title, :description, :lot, :reoccuring, :due)
  end
end
