class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.integer :rating
      t.belongs_to :guest
      t.belongs_to :episode

      t.timestamps
    end
  end
end
