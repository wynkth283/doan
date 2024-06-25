class CartsController < ApplicationController
  layout 'thanhcongcu'
  before_action :authenticate_user!
  def index
    @gio_hangs = GioHang.all

    if session[:nguoidung_id]
      @nguoidung = Nguoidung.find(session[:nguoidung_id])
      @gio_hangs = @nguoidung.gio_hangs
    else
      redirect_to dang_nhap_index_path, notice: "Vui lòng đăng nhập để xem giỏ hàng."
    end

    @gio_hangs = if params[:search].present?
      @nguoidung.gio_hangs.where("TenSach LIKE ?", "%#{params[:search]}%")
    else
      @nguoidung.gio_hangs
    end
  end

  def destroy
    @gio_hang.destroy!
  end
  protect_from_forgery with: :null_session # Để cho phép các yêu cầu AJAX

  def remove_from_cart
    gio_hang_id = params[:id]
    gio_hang = GioHang.find(gio_hang_id)

    if gio_hang.destroy
      respond_to do |format|
        format.json { render json: { success: true, message: "Sản phẩm đã được xóa khỏi giỏ hàng" } }

      end
    else
      respond_to do |format|
        format.json { render json: { success: false, message: "Có lỗi xảy ra khi xóa sản phẩm khỏi giỏ hàng" } }
      end
    end
  end

  def update_cart
    gio_hang_id = params[:id]
    new_quantity = params[:quantity].to_i
    gio_hang = GioHang.find(gio_hang_id)

    gio_hang.soluong = new_quantity
    gio_hang.thanhtien = gio_hang.Gia * new_quantity

    if gio_hang.save
      respond_to do |format|
        format.json { render json: { success: true, message: "Sản phẩm đã được cập nhật trong giỏ hàng" } }

      end
    else
      respond_to do |format|
        format.json { render json: { success: false, message: "Có lỗi xảy ra khi cập nhật giỏ hàng" } }
      end
    end
  end

  private

  def authenticate_user!
    redirect_to dang_nhap_index_path unless session[:nguoidung_id]
  end
end
