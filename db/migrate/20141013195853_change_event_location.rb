class ChangeEventLocation < ActiveRecord::Migration
  def change
    add_column :events, :location_id, :integer
    remove_column :events, :location, :string
  end
end
