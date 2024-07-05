class ChiTietSachController < ApplicationController
  layout 'thanhcongcu'

  def index
      @sach = Sach.find(params[:id]) if params[:id]
  end

  def CTS_them_sach
    sach = Sach.find(params[:id])
    nguoidung = Nguoidung.find(session[:nguoidung_id])

    gio_hang = GioHang.find_or_initialize_by(nguoidung: nguoidung, sach: sach)
    gio_hang.TenSach = sach.TenSach
    gio_hang.Gia = sach.Gia
    gio_hang.AnhMinhHoa = sach.AnhMinhHoa
    gio_hang.danh_muc = sach.danh_muc
    gio_hang.soluong ||= 0
    gio_hang.soluong += params[:soluong].to_i
    gio_hang.thanhtien = gio_hang.Gia * gio_hang.soluong

    if gio_hang.save
      redirect_to chi_tiet_sach_index_path(id: sach.id), notice: 'Sách đã được thêm vào giỏ hàng.'
    else
      redirect_to chi_tiet_sach_index_path(id: sach.id), alert: 'Có lỗi xảy ra khi thêm sách vào giỏ hàng.'
    end
  end
end
