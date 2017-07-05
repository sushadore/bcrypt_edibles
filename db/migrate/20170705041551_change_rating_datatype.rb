class ChangeRatingDatatype < ActiveRecord::Migration[5.1]
  def change
    change_column :reviews, :rating, :decimal
  end
end
