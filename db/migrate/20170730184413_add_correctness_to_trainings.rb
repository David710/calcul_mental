class AddCorrectnessToTrainings < ActiveRecord::Migration[5.1]
  def change
    add_column :trainings, :correctness, :boolean
  end
end
