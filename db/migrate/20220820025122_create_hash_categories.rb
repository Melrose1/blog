class CreateHashCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :hash_categories do |t|
      t.references :article, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
