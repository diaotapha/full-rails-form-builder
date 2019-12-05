class AddResponsesToCandidats < ActiveRecord::Migration[5.2]
  def change
    add_column :candidats, :responses, :text
  end
end
