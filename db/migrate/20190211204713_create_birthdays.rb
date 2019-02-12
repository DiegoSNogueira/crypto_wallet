class CreateBirthdays < ActiveRecord::Migration[5.2]
  def change
    create_table :birthdays do |t|
      t.integer :dia
      t.integer :mes
      t.integer :ano

      t.timestamps
    end
  end
end
