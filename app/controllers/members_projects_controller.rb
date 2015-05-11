class MembersProjectsController < ApplicationController
  before_action :set_members_project, only: [:show, :edit, :update, :destroy]

  # GET /members_projects
  # GET /members_projects.json
  def index
    @members_projects = MembersProject.all
  end

  # GET /members_projects/1
  # GET /members_projects/1.json
  def show
  end

  # GET /members_projects/new
  def new
    @members_project = MembersProject.new
  end

  # GET /members_projects/1/edit
  def edit
  end

  # POST /members_projects
  # POST /members_projects.json
  def create
    @members_project = MembersProject.new(members_project_params)

    respond_to do |format|
      if @members_project.save
        format.html { redirect_to @members_project, notice: 'Members project was successfully created.' }
        format.json { render :show, status: :created, location: @members_project }
      else
        format.html { render :new }
        format.json { render json: @members_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members_projects/1
  # PATCH/PUT /members_projects/1.json
  def update
    respond_to do |format|
      if @members_project.update(members_project_params)
        format.html { redirect_to @members_project, notice: 'Members project was successfully updated.' }
        format.json { render :show, status: :ok, location: @members_project }
      else
        format.html { render :edit }
        format.json { render json: @members_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members_projects/1
  # DELETE /members_projects/1.json
  def destroy
    @members_project.destroy
    respond_to do |format|
      format.html { redirect_to members_projects_url, notice: 'Members project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_members_project
      @members_project = MembersProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def members_project_params
      params.require(:members_project).permit(:member_id, :project_id, :date)
    end
end
