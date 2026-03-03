class CreateLanguages < ActiveRecord::Migration[7.1]
  def change
    create_table :languages do |t|
      t.string :name
      t.text :description
      t.string :documentation_url
      t.string :category

      t.timestamps
    end
  end
end
