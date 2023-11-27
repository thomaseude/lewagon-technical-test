class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.integer :status, default: 0, null: false
      t.datetime :opened_at
      t.datetime :closed_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
