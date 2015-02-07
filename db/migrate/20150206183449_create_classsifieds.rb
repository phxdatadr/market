class CreateClasssifieds < ActiveRecord::Migration
  def change
    create_table :classsifieds do |t|
      t.string :title
      t.date :postedDate
      t.string :details
      t.date :expireDate
      t.integer :categoryid
      t.integer :contactId
      t.string :status

      t.timestamps
    end
  end
end
