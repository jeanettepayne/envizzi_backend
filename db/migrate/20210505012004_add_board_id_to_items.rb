class AddBoardIdToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :board_id, :integer
  end
end
