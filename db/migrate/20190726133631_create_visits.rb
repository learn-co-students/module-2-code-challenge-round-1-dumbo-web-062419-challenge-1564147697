class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.belongs_to :episode, foreign_key: true
      t.belongs_to :guest, foreign_key: true
      t.integer :rating
      t.timestamps
    end
  end
end
