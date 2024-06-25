class HomeController < ApplicationController
  layout 'thanhcongcu-sapxep'
  def index

    if params[:search].present?
      @saches = Sach.search(params[:search])
    elsif params[:category].present?
      @saches = Sach.filter_by_category(params[:category])
    else
      @saches = Sach.all
    end

    @danh_mucs = DanhMuc.all

    case params[:sort]
    when 'a-z'
      @saches = @saches.order(:TenSach)
    when 'caodenthap'
      @saches = @saches.order(Gia: :desc)
    when 'thapdencao'
      @saches = @saches.order(Gia: :asc)
    end
  end
end
