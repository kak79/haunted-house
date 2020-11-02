class CreateCostumes < ActiveRecord::Migration[6.0]
  def change
    create_table :costumes do |t|
      t.string :name
      t.string :img_url
      t.string :description

      t.timestamps
    end
  end
end
