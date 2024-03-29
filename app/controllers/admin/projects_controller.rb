class Admin::ProjectsController < AdminController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate, only: :show

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all.order(:order)
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    ids = Project.order(:order).pluck(:id)
    index = ids.index(@project.id)
    @prev_id = index == 0 ? ids[ids.length - 1] : ids[index - 1]
    @next_id = index == ids.length - 1 ? ids[0] : ids[index + 1]
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to edit_admin_project_path(@project), notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to edit_admin_project_path(@project), notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to admin_projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :tagline, :company, :summary, :role, :media, :order, :video_id, images_attributes: [:id, :file, :feature, :order, :_destroy])
    end
end
