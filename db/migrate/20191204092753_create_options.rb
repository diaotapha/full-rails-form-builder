class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :title
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
