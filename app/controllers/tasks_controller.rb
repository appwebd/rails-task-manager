class TasksController < ApplicationController
  before_action :set_find_task, only: %i[show edit update destroy]

  def index
    @tasks = Task.all
  end

  # New task get
  def new
    @record = Task.new
  end

  def create
    @task = Task.new(params_task)
    @task.save
    redirect_to tasks_path(@tasks)
  end

  def edit; end

  def update
    @task.update(params_task)
    redirect_to tasks_path(@tasks)
  end

  def show; end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path(@tasks)
  end

  private

  def params_task
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_find_task
    @task = Task.find(params[:id])
  end
end
