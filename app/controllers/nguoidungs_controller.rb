class NguoidungsController < ApplicationController
  layout 'admin'
  before_action :set_nguoidung, only: %i[ show edit update destroy ]

  def khach_hang
    @khach_hang = Nguoidung.where(loai_quyen_id: 2)

    if params[:search].present?
      @khach_hang = Nguoidung.where(loai_quyen_id: 2)
                             .where('TenND LIKE ?', "%#{params[:search]}%")
    else
      @khach_hang = Nguoidung.where(loai_quyen_id: 2)
    end
  end

  def nhan_vien
    @nhan_vien = Nguoidung.where(loai_quyen_id: 3)

    if params[:search].present?
      @nhan_vien = Nguoidung.where(loai_quyen_id: 3)
                             .where('TenND LIKE ?', "%#{params[:search]}%")
    else
      @nhan_vien = Nguoidung.where(loai_quyen_id: 3)
    end
  end

  # GET /nguoidungs or /nguoidungs.json
  def index
    @nguoidungs = if params[:search].present?
      Nguoidung.search(params[:search])
    else
      Nguoidung.all
    end

    @total_customers = Nguoidung.where(loai_quyen_id: 2).count
    @total_employees = Nguoidung.where(loai_quyen_id: 3).count
  end

  # GET /nguoidungs/1 or /nguoidungs/1.json
  def show
  end

  # GET /nguoidungs/new
  def new
    @nguoidung = Nguoidung.new
  end

  # GET /nguoidungs/1/edit
  def edit
    @loai_quyens = LoaiQuyen.all
  end

  # POST /nguoidungs or /nguoidungs.json
  def create
    @nguoidung = Nguoidung.new(nguoidung_params)

    respond_to do |format|
      if @nguoidung.save
        format.html { redirect_to nguoidungs_path(@nguoidung), notice: "Nguoidung was successfully created." }
        format.json { render :index, status: :ok, location: @nguoidung }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nguoidung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nguoidungs/1 or /nguoidungs/1.json
  def update
    respond_to do |format|
      if @nguoidung.update(nguoidung_params)
        format.html { redirect_to nguoidung_url(@nguoidung), notice: "Nguoidung was successfully updated." }
        format.json { render :show, status: :ok, location: @nguoidung }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nguoidung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nguoidungs/1 or /nguoidungs/1.json
  def destroy
    @nguoidung.destroy!

    respond_to do |format|
      format.html { redirect_to nguoidungs_url, notice: "Nguoidung was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nguoidung
      @nguoidung = Nguoidung.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nguoidung_params
      params.require(:nguoidung).permit(:TenND, :AnhDaiDien, :SDT, :Email, :loai_quyen_id, :MatKhau, :DiaChi)
    end
end
