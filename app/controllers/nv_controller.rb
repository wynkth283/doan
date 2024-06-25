class NvController < ApplicationController
  layout 'nv'
  def index
    @total_books = Sach.count
    @total_customers = Nguoidung.where(loai_quyen_id: 2).count
    @total_orders = DonDatHang.count
    @total_revenue = DonDatHang.sum(:TongTien)
  end
end
