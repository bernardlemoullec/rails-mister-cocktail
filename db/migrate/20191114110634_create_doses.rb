class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.text :description
      t.references :cocktail, foreign_key: true
      # t.belongs_to :cocktail, index: { unique: true }, foreign_key: true
      t.references :ingredient, foreign_key: true
      # t.belongs_to :ingredient, index: { unique: true }, foreign_key: true
      # add_index :doses, [:cocktail_id, :dose_id], unique: true
      t.timestamps
    end
  end
end
