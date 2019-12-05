class ChangeAnswerTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table  :answers, :reponses
  end
end
