class Nguoidung < ApplicationRecord
  belongs_to :loai_quyen
  mount_uploader :AnhDaiDien, AnhDaiDienUploader
  has_many :gio_hangs

  def self.search(query)
    if query.to_i.to_s == query # Check if the query is a numeric string
      where("id = ? OR TenND LIKE ?", query.to_i, "%#{query}%")
    else
      where("TenND LIKE ?", "%#{query}%")
    end
  end
end
