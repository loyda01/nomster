class AddCaptionPlaceAndUserToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :user_id, :integer
    add_column :photos, :place_id, :integer
    add_column :photos, :caption, :string
  
    add_index :photos, :user_id 
    add_index :photos, :place_id
  end
end
 
