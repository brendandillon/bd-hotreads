class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :url
      t.string :title
      t.integer :count

      t.timestamps
    end
  end
end
