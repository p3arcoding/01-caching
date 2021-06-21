class AddFeaturedToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :featured, :integer, default: 0
  end
end
