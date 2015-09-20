class CreateSupercars < ActiveRecord::Migration
  def change
    create_table :supercars do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
