class TasklistsController < ApplicationController
  def index
    @task_list = Tasklist.all
  end

  def new
  	@task_list = Tasklist.new
  end

  def edit
  end

  def show
  end

  def create
  	@task_list = Tasklist.new(params[:tasklist])
  	if @task_list.save
  		redirect_to tasklist_path
  	else
  		render 'new'
  	end
end
