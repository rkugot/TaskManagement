class AddPositionToTasks < ActiveRecord::Migration[5.0]
  def up
    add_column :tasks, :position, :integer
  end
end
