class RemoveCollectionDateIdFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :collection_date_id
  end
end
