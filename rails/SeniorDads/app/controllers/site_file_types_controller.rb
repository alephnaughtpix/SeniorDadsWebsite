class SiteFileTypesController < ApplicationController
  before_action :set_site_file_type, only: [:show, :edit, :update, :destroy]

  # GET /site_file_types
  # GET /site_file_types.json
  def index
    @site_file_types = SiteFileType.all
  end

  # GET /site_file_types/1
  # GET /site_file_types/1.json
  def show
  end

  # GET /site_file_types/new
  def new
    @site_file_type = SiteFileType.new
  end

  # GET /site_file_types/1/edit
  def edit
  end

  # POST /site_file_types
  # POST /site_file_types.json
  def create
    @site_file_type = SiteFileType.new(site_file_type_params)

    respond_to do |format|
      if @site_file_type.save
        format.html { redirect_to @site_file_type, notice: 'Site file type was successfully created.' }
        format.json { render :show, status: :created, location: @site_file_type }
      else
        format.html { render :new }
        format.json { render json: @site_file_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site_file_types/1
  # PATCH/PUT /site_file_types/1.json
  def update
    respond_to do |format|
      if @site_file_type.update(site_file_type_params)
        format.html { redirect_to @site_file_type, notice: 'Site file type was successfully updated.' }
        format.json { render :show, status: :ok, location: @site_file_type }
      else
        format.html { render :edit }
        format.json { render json: @site_file_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_file_types/1
  # DELETE /site_file_types/1.json
  def destroy
    @site_file_type.destroy
    respond_to do |format|
      format.html { redirect_to site_file_types_url, notice: 'Site file type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_file_type
      @site_file_type = SiteFileType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_file_type_params
      params.require(:site_file_type).permit(:title, :description)
    end
end
