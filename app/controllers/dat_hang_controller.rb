class DatHangController < ApplicationController
  layout 'thanhcongcu'
  before_action :set_nguoidung
  before_action :check_empty_cart, only: [:index]

  def index
    @gio_hangs = GioHang.where(nguoidung_id: @nguoidung.id)
    @don_dat_hang = DonDatHang.new
  end

  private

  def set_nguoidung
    @nguoidung = Nguoidung.find(session[:nguoidung_id]) if session[:nguoidung_id]
  end

  def check_empty_cart
    gio_hangs = GioHang.where(nguoidung_id: session[:nguoidung_id])
    if gio_hangs.empty?
      redirect_to carts_index_path, alert: 'Giỏ hàng trống'
    end
  end
end
