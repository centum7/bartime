class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :url_home
      t.string :url_outsite
      t.string :memo
      t.string :shop_image

      t.timestamps
    end
  end
end
