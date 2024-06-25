class LoaiQuyensController < ApplicationController
  before_action :set_loai_quyen, only: %i[ show edit update destroy ]

  # GET /loai_quyens or /loai_quyens.json
  def index
    @loai_quyens = LoaiQuyen.all
  end

  # GET /loai_quyens/1 or /loai_quyens/1.json
  def show
  end

  # GET /loai_quyens/new
  def new
    @loai_quyen = LoaiQuyen.new
  end

  # GET /loai_quyens/1/edit
  def edit
  end

  # POST /loai_quyens or /loai_quyens.json
  def create
    @loai_quyen = LoaiQuyen.new(loai_quyen_params)

    respond_to do |format|
      if @loai_quyen.save
        format.html { redirect_to loai_quyen_url(@loai_quyen), notice: "Loai quyen was successfully created." }
        format.json { render :show, status: :created, location: @loai_quyen }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loai_quyen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loai_quyens/1 or /loai_quyens/1.json
  def update
    respond_to do |format|
      if @loai_quyen.update(loai_quyen_params)
        format.html { redirect_to loai_quyen_url(@loai_quyen), notice: "Loai quyen was successfully updated." }
        format.json { render :show, status: :ok, location: @loai_quyen }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loai_quyen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loai_quyens/1 or /loai_quyens/1.json
  def destroy
    @loai_quyen.destroy!

    respond_to do |format|
      format.html { redirect_to loai_quyens_url, notice: "Loai quyen was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loai_quyen
      @loai_quyen = LoaiQuyen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loai_quyen_params
      params.require(:loai_quyen).permit(:TenQuyen)
    end
end
