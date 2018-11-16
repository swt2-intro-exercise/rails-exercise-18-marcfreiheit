class CreatePapers < ActiveRecord::Migration[5.2]
  def change
    create_table :papers do |t|
      t.string :title
      t.string :venue
      t.integer :year
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
