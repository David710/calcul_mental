class AddRangToTrainings < ActiveRecord::Migration[5.1]
  def change
    add_column :trainings, :rang, :integer
  end
end
