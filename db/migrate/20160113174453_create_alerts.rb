class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :title
      t.string :description
      t.integer :sid

      t.timestamps 
    end
  end
end
