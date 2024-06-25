class ProfileController < ApplicationController
  before_action :set_profile, only: [:edit, :update]
  before_action :authenticate_user!
  before_action :set_layout

  def index
    @nguoidungs = Nguoidung.all
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to edit_profile_path(@profile), notice: 'Profile was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_profile
    @profile = Nguoidung.find(session[:nguoidung_id]) if session[:nguoidung_id]
  end

  def profile_params
    params.require(:nguoidung).permit(:TenND, :AnhDaiDien, :SDT, :Email, :loai_quyen_id, :MatKhau, :DiaChi)
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
