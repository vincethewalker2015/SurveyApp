class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :date1
      t.string :date2
      t.string :date3
      t.string :date4
      t.string :date5
      t.string :date6
      t.string :date7

      t.timestamps
    end
  end
end
