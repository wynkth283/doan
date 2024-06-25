class DanhMucsController < ApplicationController
  layout 'admin'
  before_action :set_danh_muc, only: %i[ show edit update destroy ]

  # GET /danh_mucs or /danh_mucs.json
  def index
    @danh_mucs = DanhMuc.all
  end

  # GET /danh_mucs/1 or /danh_mucs/1.json
  def show
  end

  # GET /danh_mucs/new
  def new
    @danh_muc = DanhMuc.new
  end

  # GET /danh_mucs/1/edit
  def edit
  end

  # POST /danh_mucs or /danh_mucs.json
  def create
    @danh_muc = DanhMuc.new(danh_muc_params)

    respond_to do |format|
      if @danh_muc.save
        format.html { redirect_to danh_muc_url(@danh_muc), notice: "Danh muc was successfully created." }
        format.json { render :show, status: :created, location: @danh_muc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @danh_muc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /danh_mucs/1 or /danh_mucs/1.json
  def update
    respond_to do |format|
      if @danh_muc.update(danh_muc_params)
        format.html { redirect_to danh_muc_url(@danh_muc), notice: "Danh muc was successfully updated." }
        format.json { render :show, status: :ok, location: @danh_muc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @danh_muc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /danh_mucs/1 or /danh_mucs/1.json
  def destroy
    @danh_muc.destroy!

    respond_to do |format|
      format.html { redirect_to danh_mucs_url, notice: "Danh muc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_danh_muc
      @danh_muc = DanhMuc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def danh_muc_params
      params.require(:danh_muc).permit(:TenDM)
    end
end
