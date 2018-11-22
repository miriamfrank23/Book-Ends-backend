class DropIps < ActiveRecord::Migration[5.2]
  def change
    drop_table :ips
  end
end
