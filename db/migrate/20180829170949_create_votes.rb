class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.boolean :value
      t.text :description

      t.timestamps
    end
  end
end
