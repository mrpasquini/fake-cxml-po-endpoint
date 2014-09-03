class CreatePos < ActiveRecord::Migration
  def change
    create_table :pos do |t|

      t.timestamps
    end
  end
end
