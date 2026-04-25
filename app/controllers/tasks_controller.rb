class TasksController < ApplicationController
  # This makes sure we always have the @project loaded before doing anything
  before_action :set_project

  def new
    @task = @project.tasks.build
  end

  def create
    @task = @project.tasks.build(task_params)

    if @task.save
      # Redirect straight back to the project dashboard once saved!
      redirect_to @project, notice: "Task was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_project
    # We find the project through the Current.user to ensure they can't 
    # hack the URL and add tasks to someone else's project!
    @project = Current.user.projects.find(params[:project_id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :status, :due_date)
  end
end