class CreateDeceaseds < ActiveRecord::Migration[5.2]
  def change
    create_table :deceaseds do |t|
      t.string :name
      t.string :age
      t.references :user, index: true
      t.string  :relationship
      t.date :death_date # TODO: conventions issue
      t.timestamps
    end
  end
end
