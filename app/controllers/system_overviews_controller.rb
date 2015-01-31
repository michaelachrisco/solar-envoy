class SystemOverviewsController < ApplicationController
  before_action :set_system_overview, only: [:show, :edit, :update, :destroy]

  # GET /system_overviews
  # GET /system_overviews.json
  def index
    @system_overviews = SystemOverview.all
  end

  # GET /system_overviews/1
  # GET /system_overviews/1.json
  def show
  end

  # GET /system_overviews/new
  def new
    @system_overview = SystemOverview.new
  end

  # GET /system_overviews/1/edit
  def edit
  end

  # POST /system_overviews
  # POST /system_overviews.json
  def create
    @system_overview = SystemOverview.new(system_overview_params)

    respond_to do |format|
      if @system_overview.save
        format.html { redirect_to @system_overview, notice: 'System overview was successfully created.' }
        format.json { render :show, status: :created, location: @system_overview }
      else
        format.html { render :new }
        format.json { render json: @system_overview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_overviews/1
  # PATCH/PUT /system_overviews/1.json
  def update
    respond_to do |format|
      if @system_overview.update(system_overview_params)
        format.html { redirect_to @system_overview, notice: 'System overview was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_overview }
      else
        format.html { render :edit }
        format.json { render json: @system_overview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_overviews/1
  # DELETE /system_overviews/1.json
  def destroy
    @system_overview.destroy
    respond_to do |format|
      format.html { redirect_to system_overviews_url, notice: 'System overview was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_overview
      @system_overview = SystemOverview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_overview_params
      params.require(:system_overview).permit(:lifetime_generation, :currently_running, :last_connection_to_website, :number_of_microconverters_online, :number_of_microconverters, :current_software_version, :software_build_date, :database_size, :current_timezone, :envoy_ip_address, :envoy_mac_address, :envoy_power_line_device)
    end
end
