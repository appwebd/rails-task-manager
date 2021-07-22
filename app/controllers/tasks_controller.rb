class TasksController < ApplicationController
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

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params_task)
    redirect_to tasks_path(@tasks)
  end

  def show
    @id = params[:id]
    @record = Task.find(@id)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path(@tasks)
  end

  private

  def params_task
    params.require(:task).permit(:title, :details, :completed)
  end

end
