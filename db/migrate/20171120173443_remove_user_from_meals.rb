class RemoveUserFromMeals < ActiveRecord::Migration[5.0]
  def change
    remove_reference :meals, :user, foreign_key: true
  end
end
