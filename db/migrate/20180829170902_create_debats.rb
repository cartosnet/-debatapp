class CreateDebats < ActiveRecord::Migration[5.2]
  def change
    create_table :debats do |t|
      t.string :title
      t.text :description
      t.date :due_date

      t.timestamps
    end
  end
end
