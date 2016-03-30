class AddUserIdToHealthConcerns < ActiveRecord::Migration
  def change
    add_column :health_concerns, :user_id, :integer
  end
end
