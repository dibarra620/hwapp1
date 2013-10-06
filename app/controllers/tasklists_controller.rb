class TasklistsController < ApplicationController
  def index
  end

  def new
  	@task_list = Tasklist.new
  end

  def edit
  end

  def show
  end

  def create
  	@task_list = Tasklist.new(params[:tasklast])
  	if @task_list.save
  		redirect_to tasklist_path
  	else
  		render 'new'
  	end
end
