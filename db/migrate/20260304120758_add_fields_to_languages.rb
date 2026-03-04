class AddFieldsToLanguages < ActiveRecord::Migration[7.1]
  def change
    add_column :languages, :title, :string
    add_column :languages, :documentation_link, :string
  end
end
