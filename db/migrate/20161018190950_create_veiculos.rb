class CreateVeiculos < ActiveRecord::Migration[5.0]
  def change
    create_table :veiculos do |t|
      t.string :name

      t.timestamps
    end
  end
end
