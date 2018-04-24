class DelColumn < ActiveRecord::Migration[5.2]
  def change
  		change_table :posts do |t|
  		t.remove :user, :category, :categorie
  		end
  end
end
