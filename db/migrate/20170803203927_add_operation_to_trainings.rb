class AddOperationToTrainings < ActiveRecord::Migration[5.1]
  def change
    add_column :trainings, :operation, :string
  end
end
