class CreateSources < ActiveRecord::Migration[7.0]
  def change
    create_table :sources do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.string :color

      t.timestamps
    end
  end
end
