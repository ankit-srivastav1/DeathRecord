class CreateDeceaseds < ActiveRecord::Migration[5.2]
  def change
    create_table :deceaseds do |t|
      t.string :name
      t.string :age
      t.references :user_id, index: true, foreign_key: { to_table: :users }
      t.string  :relationship
      t.date :death_date # TODO: conventions issue
      t.timestamps
    end
  end
end
