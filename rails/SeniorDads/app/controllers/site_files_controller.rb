class SiteFilesController < ApplicationController
  before_action :set_site_file, only: [:show, :edit, :update, :destroy]

  # GET /site_files
  # GET /site_files.json
  def index
    @site_files = SiteFile.all
  end

  # GET /site_files/1
  # GET /site_files/1.json
  def show
  end

  # GET /site_files/new
  def new
    @site_file = SiteFile.new
  end

  # GET /site_files/1/edit
  def edit
  end

  # POST /site_files
  # POST /site_files.json
  def create
    @site_file = SiteFile.new(site_file_params)

    respond_to do |format|
      if @site_file.save
        format.html { redirect_to @site_file, notice: 'Site file was successfully created.' }
        format.json { render :show, status: :created, location: @site_file }
      else
        format.html { render :new }
        format.json { render json: @site_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site_files/1
  # PATCH/PUT /site_files/1.json
  def update
    respond_to do |format|
      if @site_file.update(site_file_params)
        format.html { redirect_to @site_file, notice: 'Site file was successfully updated.' }
        format.json { render :show, status: :ok, location: @site_file }
      else
        format.html { render :edit }
        format.json { render json: @site_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_files/1
  # DELETE /site_files/1.json
  def destroy
    @site_file.destroy
    respond_to do |format|
      format.html { redirect_to site_files_url, notice: 'Site file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_file
      @site_file = SiteFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_file_params
      params.require(:site_file).permit(:name, :url, :description, :site_file_type_id, :order)
    end
end
