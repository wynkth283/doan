class SessionsController < ApplicationController
  def login
    nguoidung = Nguoidung.find_by(email: params[:email])
    if nguoidung && nguoidung.MatKhau == params[:MatKhau]
      session[:nguoidung_id] = nguoidung.id
      redirect_to home_index_path
    else
      flash[:alert] = 'Email hoặc mật khẩu không đúng'
      redirect_to dang_nhap_index_path
    end
  end

  def logout
    session[:nguoidung_id] = nil
    redirect_to dang_nhap_index_path, notice: 'Đã đăng xuất!'
  end
end
