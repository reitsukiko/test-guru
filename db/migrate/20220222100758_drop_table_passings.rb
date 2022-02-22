class DropTablePassings < ActiveRecord::Migration[6.1]
  def up
    drop_table :passings, if_exists: true
  end
end
