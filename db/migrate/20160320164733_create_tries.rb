class CreateTries < ActiveRecord::Migration
  def change
    create_table :tries do |t|
      t.integer :count

      t.timestamps null: false
    end
  end
end
