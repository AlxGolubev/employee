class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :department, default: 0, null: false
      t.integer :level, default: 0, null: false
      t.boolean :team_leader, default: false
      t.timestamps
    end
  end
end
