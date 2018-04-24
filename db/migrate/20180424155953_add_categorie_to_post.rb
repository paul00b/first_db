class AddCategorieToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :categorie, :reference
  end
end
