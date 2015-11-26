class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.float :latitude
      t.float :langitude
      t.string :address
      t.string :name
      t.string :url
      t.string :sun_time
      t.string :mon_time
      t.string :tue_time
      t.string :web_time
      t.string :thu_time
      t.string :fri_time
      t.string :sta_time

      t.timestamps
    end
  end
end
