class AddBeginingToTrainings < ActiveRecord::Migration[5.1]
  def change
    add_column :trainings, :begining, :datetime
  end
end
