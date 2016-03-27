class CreateAsyncTries < ActiveRecord::Migration
  def change
    create_table :async_tries do |t|
      t.integer :count

      t.timestamps null: false
    end
  end
end
