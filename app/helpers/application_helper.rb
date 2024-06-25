module ApplicationHelper
  def appropriate_path_for_user(nguoidung)
    case nguoidung.loai_quyen_id
    when 1
      admin_index_path
    when 2
      khach_hang_index_path
    when 3
      nv_index_path
    else
      root_path 
    end
  end
end
