class AddDocumentationToLanguages < ActiveRecord::Migration[7.1]
  def change
    add_column :languages, :documentation, :string
  end
end
