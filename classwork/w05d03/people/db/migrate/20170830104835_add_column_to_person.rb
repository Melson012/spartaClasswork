class AddColumnToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :gender, :string
    add_column :people, :Mobile_Number, :integer
    add_column :people, :About, :string
  end
end
