class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = current_user.tasks
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = current_user.tasks.new(task_params)
    if @task.save
      redirect_to controller: :tasks
    else
      render :new
    end
  end

  def update
    if @task.update!(task_params)
      redirect_to controller: :tasks
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to controller: :tasks
  end

  private

  def set_list
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :description)
  end
end
