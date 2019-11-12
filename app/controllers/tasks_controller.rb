class TasksController < ApplicationController
  def new
  end

  def create
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  private

  def new_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
