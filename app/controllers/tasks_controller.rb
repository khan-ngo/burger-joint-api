# frozen_string_literal: true

class TasksController < ApplicationController
  # class TasksController < ProtectedController
  before_action :set_task, only: [:show, :update, :destroy]

  ####### GET #######
  def index
    # @tasks = Task.all
    @tasks = current_user.tasks

    render json: @tasks
  end

  ####### GET #######
  def show
    render json: @task
  end

  ####### POST #######
  def create
    # @task = Task.new(task_params)
    @task = current_user.tasks.new(task_params)

    if @task.save
      # render json: @task, status: :created
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  ####### PATCH/PUT #######
  def update
    if @task.update(task_params)
      # head :no_content
      render json: @tasks, status: :ok
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  ####### DELETE #######
  def destroy
    @task.destroy
    head :no_content
  end

  ####### private #######
  private

  def set_task
    # @task = Task.find(params[:id])
    @task = current_user.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :completed, :user_id)
  end
end
