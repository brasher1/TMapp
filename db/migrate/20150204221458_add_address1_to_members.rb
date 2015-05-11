class AddAddress1ToMembers < ActiveRecord::Migration
  def change
    add_column :members, :address1, :string
  end
end
