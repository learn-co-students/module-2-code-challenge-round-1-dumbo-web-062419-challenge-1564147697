class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.integer :guest_id
      t.integer :episode_id
      t.integer :rating
      t.belongs_to :guest, foreign_key: true
      t.belongs_to :episode, foreign_key: true

      t.timestamps
    end
  end
end
