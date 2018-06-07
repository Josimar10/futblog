class RemoveCategoriaIdFromArticulos < ActiveRecord::Migration[5.1]
  def change
    remove_column :articulos, :categoria_id, :text
  end
end
