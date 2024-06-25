class CreateDangKies < ActiveRecord::Migration[7.1]
  def change
    create_table :dang_kies do |t|

      t.timestamps
    end
  end
end
