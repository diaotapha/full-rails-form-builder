class CreateCandidats < ActiveRecord::Migration[5.2]
  def change
    create_table :candidats do |t|
      t.references :formulaire, foreign_key: true

      t.timestamps
    end
  end
end
