class CreateDayLives < ActiveRecord::Migration[5.1]
  def change
    create_table :day_lives do |t|
      t.text :goal
      t.text :diary
      t.date :day
      t.string :status

      t.timestamps
    end
  end
end
