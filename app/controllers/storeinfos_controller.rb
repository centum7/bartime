class StoreinfosController < ApplicationController
  before_action :set_storeinfo, only: [:show, :edit, :update, :destroy]

  # GET /storeinfos
  # GET /storeinfos.json
  def index
    @storeinfos = Storeinfo.all
  end

  # GET /storeinfos/1
  # GET /storeinfos/1.json
  def show
  end

  # GET /storeinfos/new
  def new
    @storeinfo = Storeinfo.new
  end

  # GET /storeinfos/1/edit
  def edit
  end

  # POST /storeinfos
  # POST /storeinfos.json
  def create
    @storeinfo = Storeinfo.new(storeinfo_params)

    respond_to do |format|
      if @storeinfo.save
        format.html { redirect_to @storeinfo, notice: 'Storeinfo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @storeinfo }
      else
        format.html { render action: 'new' }
        format.json { render json: @storeinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storeinfos/1
  # PATCH/PUT /storeinfos/1.json
  def update
    respond_to do |format|
      if @storeinfo.update(storeinfo_params)
        format.html { redirect_to @storeinfo, notice: 'Storeinfo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @storeinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storeinfos/1
  # DELETE /storeinfos/1.json
  def destroy
    @storeinfo.destroy
    respond_to do |format|
      format.html { redirect_to storeinfos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storeinfo
      @storeinfo = Storeinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def storeinfo_params
      params.require(:storeinfo).permit(:latitude, :longitude, :address, :name, :url, :sun_time, :mon_time, :tue_time, :web_time, :thu_time, :fri_time, :sta_time)
    end
end
