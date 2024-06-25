class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :set_layout
  private

  def authenticate_user!
    unless session[:nguoidung_id]
      flash[:alert] = 'Bạn cần đăng nhập để truy cập trang này.'
      redirect_to dang_nhap_index_path
    end
  end

  public

  def index
    @total_books = Sach.count
    @total_customers = Nguoidung.where(loai_quyen_id: 2).count
    @total_employees = Nguoidung.where(loai_quyen_id: 3).count
    @total_orders = DonDatHang.count
    @total_revenue = DonDatHang.sum(:TongTien)
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
