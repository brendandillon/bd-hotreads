class SetDefaultForCountOnLinks < ActiveRecord::Migration[5.0]
  def change
    change_column :links, :count, :integer, default: 0
  end
end
