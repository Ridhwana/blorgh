class AddAuthorIdToBlorghArticles < ActiveRecord::Migration[8.0]
  def change
    add_column :blorgh_articles, :author_id, :integer
  end
end
