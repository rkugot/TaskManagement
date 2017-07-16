class AddCompleteToTasks < ActiveRecord::Migration[5.0]
  def up
    add_column :tasks, :complete, :boolean, default: false, null: false
  end
end
