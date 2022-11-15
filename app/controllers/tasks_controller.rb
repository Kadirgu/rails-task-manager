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
    @task = Task.new(tasks_params)
    @task.save # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to tasks_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(tasks_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to tasks_path(@tasks)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    # No need for app/views/taskss/destroy.html.erb
    redirect_to tasks_path, status: :see_other
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
