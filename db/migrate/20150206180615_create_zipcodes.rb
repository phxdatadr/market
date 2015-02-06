class CreateZipcodes < ActiveRecord::Migration
  def change
    create_table :zipcodes do |t|
      t.string :details
      t.string :zip
      t.string :countOfCity
      t.string :cityStName
      t.string :lastLineCity
      t.string :state
      t.string :county
      t.string :lat_degree
      t.string :lon_degree
      t.string :lat
      t.string :long
      t.string :areacode
      t.string :timeZoneLabel

      t.timestamps
    end
  end
end
