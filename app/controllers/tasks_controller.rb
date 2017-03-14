class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
  end

  def update
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy

    redirect_to tasks_path

  end

  def new
  end

  def create
    Task.create(name: params[:name], details: params[:details], status: false)
    redirect_to tasks_path
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    # status = params[:status] ? "Done" : "To be done"
    task.update(name: params[:name], details: params[:details], status: params[:status])


    redirect_to tasks_path
  end

end
