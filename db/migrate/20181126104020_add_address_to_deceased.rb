class AddAddressToDeceased < ActiveRecord::Migration[5.2]
  def change
    add_column :deceaseds, :address, :string
  end
end
