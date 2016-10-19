class CreateImagems < ActiveRecord::Migration[5.0]
  def change
    create_table :imagems do |t|
      t.references :veiculo, foreign_key: true

      t.timestamps
    end
  end
end
