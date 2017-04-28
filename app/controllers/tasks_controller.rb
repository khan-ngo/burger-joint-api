# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  def index
    @tasks = Task.all

    render json: @tasks
  end

  def show
    render json: @task
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      render json: @task, status: :created
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      head :no_content
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy

    head :no_content
  end

  def set_task
    @task = Task.find(params[:id])
  end
  private :set_task

  def task_params
    params.require(:task).permit(:title, :author_id)
  end
  private :task_params
end