class CreateShopinfos < ActiveRecord::Migration
  def change
    create_table :shopinfos do |t|
      t.string :name
      t.string :url
      t.string :image
      t.string :tel
      t.string :place
      t.string :image
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
