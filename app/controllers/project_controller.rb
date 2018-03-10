class ProjectController < ApplicationController
  def index
    @projects = Project.all

    @project = Project.new
  end

  def new
    @project = Project.new(project_name)


    respond_to do |format|
      if @project.save
        format.js
      else
        format.json {render json: @project.errors.messages, status: :unprocessable_entity }
      end
    end

  end

  def view
    @project = Project.find(params[:id])
  end

  def chat
    @project = Project.find(params[:id])
    @message 
  end

  private
    def project_name
      params.require(:project).permit(:name, :description)
    end
end
