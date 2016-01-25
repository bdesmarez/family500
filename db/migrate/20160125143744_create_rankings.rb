class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.references :company, index: true, foreign_key: true
      t.integer :year
      t.integer :turnover, limit: 8
      t.integer :employees

      t.timestamps null: false
    end
  end
end
