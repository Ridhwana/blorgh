class CreateBlorghComments < ActiveRecord::Migration[8.0]
  def change
    create_table :blorgh_comments do |t|
      t.references :article, null: false, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
