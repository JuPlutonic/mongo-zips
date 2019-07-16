class ZipsController < ApplicationController
  before_action :set_zip, only: [:show, :edit, :update, :destroy]

  # GET /zips
  # GET /zips.json
  def index
    @zips = Zip.all
  end

  # GET /zips/1
  # GET /zips/1.json
  def show
  end

  # GET /zips/new
  def new
    @zip = Zip.new
  end

  # GET /zips/1/edit
  def edit
  end

  # POST /zips
  # POST /zips.json
  def create
    @zip = Zip.new(zip_params)

    respond_to do |format|
      if @zip.save
        format.html { redirect_to @zip, notice: 'Zip was successfully created.' }
        format.json { render :show, status: :created, location: @zip }
      else
        format.html { render :new }
        format.json { render json: @zip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zips/1
  # PATCH/PUT /zips/1.json
  def update
    respond_to do |format|
      if @zip.update(zip_params)
        format.html { redirect_to @zip, notice: 'Zip was successfully updated.' }
        format.json { render :show, status: :ok, location: @zip }
      else
        format.html { render :edit }
        format.json { render json: @zip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zips/1
  # DELETE /zips/1.json
  def destroy
    @zip.destroy
    respond_to do |format|
      format.html { redirect_to zips_url, notice: 'Zip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zip
      @zip = Zip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zip_params
      params.require(:zip).permit(:id, :city, :state, :population)
    end
end
