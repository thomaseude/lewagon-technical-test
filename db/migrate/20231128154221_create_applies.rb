class CreateApplies < ActiveRecord::Migration[7.1]
  def change
    create_table :applies do |t|
      t.string :name
      t.string :email
      t.string :phone

      t.references :job, null: true, foreign_key: true
      t.timestamps
    end
  end
end
