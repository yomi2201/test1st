class MomosController < ApplicationController
  before_action :set_momo, only: [:show, :edit, :update, :destroy]

  # GET /momos
  # GET /momos.json
  def index
    @momos = Momo.all
  end

  # GET /momos/1
  # GET /momos/1.json
  def show
  end

  # GET /momos/new
  def new
    @momo = Momo.new
  end

  # GET /momos/1/edit
  def edit
  end

  # POST /momos
  # POST /momos.json
  def create
    @momo = Momo.new(momo_params)

    respond_to do |format|
      if @momo.save
        format.html { redirect_to @momo, notice: 'Momo was successfully created.' }
        format.json { render :show, status: :created, location: @momo }
      else
        format.html { render :new }
        format.json { render json: @momo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /momos/1
  # PATCH/PUT /momos/1.json
  def update
    respond_to do |format|
      if @momo.update(momo_params)
        format.html { redirect_to @momo, notice: 'Momo was successfully updated.' }
        format.json { render :show, status: :ok, location: @momo }
      else
        format.html { render :edit }
        format.json { render json: @momo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /momos/1
  # DELETE /momos/1.json
  def destroy
    @momo.destroy
    respond_to do |format|
      format.html { redirect_to momos_url, notice: 'Momo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_momo
      @momo = Momo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def momo_params
      params.require(:momo).permit(:title, :body)
    end
end
