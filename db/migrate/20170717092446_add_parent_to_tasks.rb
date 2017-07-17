class AddParentToTasks < ActiveRecord::Migration[5.0]
  def up
    add_column :tasks, :parent, :integer, default: nil
  end
end
