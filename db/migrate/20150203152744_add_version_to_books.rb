class AddVersionToBooks < ActiveRecord::Migration
  def change
    add_column :books, :version, :string
  end
end
