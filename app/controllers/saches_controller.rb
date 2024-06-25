class SachesController < ApplicationController
  before_action :set_layout
  before_action :set_sach, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /saches or /saches.json
  def index
    @saches = if params[:search].present?
      Sach.search(params[:search])
    else
      Sach.all
    end
  end

  # GET /saches/1 or /saches/1.json
  def show
  end

  # GET /saches/new
  def new
    @sach = Sach.new
  end

  # GET /saches/1/edit
  def edit
  end

  # POST /saches or /saches.json
  def create
    @sach = Sach.new(sach_params)

    respond_to do |format|
      if @sach.save
        format.html { redirect_to sach_url(@sach), notice: "Sach was successfully created." }
        format.json { render :show, status: :created, location: @sach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saches/1 or /saches/1.json
  def update
    respond_to do |format|
      if @sach.update(sach_params)
        format.html { redirect_to sach_url(@sach), notice: "Sach was successfully updated." }
        format.json { render :show, status: :ok, location: @sach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saches/1 or /saches/1.json
  def destroy
    @sach.destroy!

    respond_to do |format|
      format.html { redirect_to saches_url, notice: "Sach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sach
      @sach = Sach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sach_params
      params.require(:sach).permit(:TenSach, :AnhMinhHoa, :Tacgia, :danh_muc_id, :Mota, :NXB, :Gia)
    end

    def authenticate_user!
      unless session[:nguoidung_id]
        flash[:alert] = 'Bạn cần đăng nhập để truy cập trang này.'
        redirect_to dang_nhap_index_path
      end
    end

    def set_layout
      case session[:nguoidung_id] && Nguoidung.find(session[:nguoidung_id]).loai_quyen_id
      when 1
        self.class.layout 'admin'
      when 2
        self.class.layout 'khach_hang'
      when 3
        self.class.layout 'nv'
      end
    end
end
