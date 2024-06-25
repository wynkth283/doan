class KhachHangController < ApplicationController
  def index
    # Tổng số đơn hàng của khách hàng
    @total_orders = DonDatHang.where(nguoidung_id: session[:nguoidung_id]).count

    # Tính tổng doanh thu của khách hàng từ các đơn hàng của họ
    @total_revenue = DonDatHang.where(nguoidung_id: session[:nguoidung_id]).sum(:TongTien)
  end
end

