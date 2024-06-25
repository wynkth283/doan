class Sach < ApplicationRecord
  mount_uploader :AnhMinhHoa, AnhMinhHoaUploader
  has_many :gio_hangs
  belongs_to :danh_muc
  def self.search(query)
    if query.to_i.to_s == query # Check if the query is a numeric string
      where("id = ? OR \"TenSach\" ILIKE ?", query.to_i, "%#{query}%")
    else
      where("\"TenSach\" ILIKE ?", "%#{query}%")
    end
  end

  def self.filter_by_category(category_id)
    where(danh_muc_id: category_id)
  end
end
