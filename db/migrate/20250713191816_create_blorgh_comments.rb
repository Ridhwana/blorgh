class CreateBlorghComments < ActiveRecord::Migration[8.0]
  def change
    create_table :blorgh_comments do |t|
      t.references :article, null: false, foreign_key: { to_table: :blorgh_articles }
      t.text :text

      t.timestamps
    end
  end
end
