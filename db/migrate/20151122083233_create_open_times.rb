class CreateOpenTimes < ActiveRecord::Migration
  def change
    create_table :open_times do |t|
      t.string :shop_id
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
