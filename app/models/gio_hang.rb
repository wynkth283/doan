class GioHang < ApplicationRecord
  belongs_to :nguoidung
  belongs_to :sach
  belongs_to :danh_muc
end
