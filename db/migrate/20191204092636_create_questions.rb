class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.string :type_field
      t.references :formulaire, foreign_key: true

      t.timestamps
    end
  end
end
