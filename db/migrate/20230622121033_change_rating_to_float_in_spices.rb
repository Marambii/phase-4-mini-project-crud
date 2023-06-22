class ChangeRatingToFloatInSpices < ActiveRecord::Migration[6.1]
  def up 
    change_column :spices, :rating, :float
  end

  def down
    change_column :spices, :rating, :integer
  end
end
