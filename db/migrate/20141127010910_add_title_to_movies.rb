class AddTitleToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :title, :string
    add_column :movies, :user_id, :string
  end
end
