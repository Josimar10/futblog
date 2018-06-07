class AddCategoriaIdToArticulos < ActiveRecord::Migration[5.1]
  def change
    add_column :articulos, :categoria_id, :integer
    add_index :articulos, :categoria_id
  end
end