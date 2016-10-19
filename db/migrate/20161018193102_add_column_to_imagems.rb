class AddColumnToImagems < ActiveRecord::Migration[5.0]
  def change
    add_column :imagems, :image, :string
  end
end
