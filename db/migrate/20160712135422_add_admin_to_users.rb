class AddAdminToUsers < ActiveRecord::Migration
  def change
    t.boolean :admin, default: false
  end
end
