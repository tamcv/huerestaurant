class AddCountViewsToFooditem < ActiveRecord::Migration[5.1]
  def change
    add_column :food_items, :count_views, :integer, :default => 0
  end
end
