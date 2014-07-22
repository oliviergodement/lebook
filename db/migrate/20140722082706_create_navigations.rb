class CreateNavigations < ActiveRecord::Migration
  def change
    create_table :navigations do |t|
      t.integer :last_page_id

      t.timestamps
    end
  end
end
