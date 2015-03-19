class Createlinks < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :links do |t|
      t.belongs_to :user, index: true
      t.datetime :link_date
      t.timestamps null: false
    end
  end
end 
